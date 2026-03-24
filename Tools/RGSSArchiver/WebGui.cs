using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Reflection;
using System.Text;
using System.Text.Json;
using System.Threading;
using System.Threading.Tasks;

namespace RGSSArchiver;

public static class WebGui
{
    private static readonly JsonSerializerOptions JsonOpts = new() { PropertyNameCaseInsensitive = true };

    public static async Task<int> RunAsync()
    {
        int port = FindFreePort();
        string url = $"http://localhost:{port}/";

        using var listener = new HttpListener();
        listener.Prefixes.Add(url);
        listener.Start();

        Console.WriteLine($"RGSSArchiver GUI running at {url}");
        Console.WriteLine("Press Ctrl+C to stop.");

        try { Process.Start(new ProcessStartInfo(url) { UseShellExecute = true }); }
        catch { Console.WriteLine($"Open {url} in your browser."); }

        try
        {
            while (true)
            {
                var ctx = await listener.GetContextAsync();
                _ = Task.Run(() => HandleAsync(ctx));
            }
        }
        catch (HttpListenerException) { }
        catch (ObjectDisposedException) { }

        return 0;
    }

    private static async Task HandleAsync(HttpListenerContext ctx)
    {
        try
        {
            string path = ctx.Request.Url?.AbsolutePath ?? "/";
            switch (path)
            {
                case "/":
                    await ServeHtmlAsync(ctx.Response);
                    break;
                case "/api/execute":
                    await HandleExecuteAsync(ctx);
                    break;
                case "/api/browse/folder":
                    await HandleBrowseAsync(ctx.Response, folder: true);
                    break;
                case "/api/browse/file":
                    string filter = ctx.Request.QueryString["filter"] ?? "All Files|*.*";
                    await HandleBrowseAsync(ctx.Response, folder: false, filter);
                    break;
                case "/api/stop":
                    await WriteJsonAsync(ctx.Response, new { ok = true });
                    ctx.Response.Close();
                    Environment.Exit(0);
                    return;
                default:
                    ctx.Response.StatusCode = 404;
                    break;
            }
        }
        catch (Exception ex)
        {
            try
            {
                ctx.Response.StatusCode = 500;
                await ctx.Response.OutputStream.WriteAsync(Encoding.UTF8.GetBytes(ex.Message));
            }
            catch { }
        }
        finally
        {
            try { ctx.Response.Close(); } catch { }
        }
    }

    private static async Task ServeHtmlAsync(HttpListenerResponse resp)
    {
        var asm = Assembly.GetExecutingAssembly();
        using var stream = asm.GetManifestResourceStream("RGSSArchiver.gui.html");
        if (stream == null)
        {
            resp.StatusCode = 500;
            await resp.OutputStream.WriteAsync(Encoding.UTF8.GetBytes("gui.html resource not found"));
            return;
        }
        resp.ContentType = "text/html; charset=utf-8";
        await stream.CopyToAsync(resp.OutputStream);
    }

    private static async Task HandleExecuteAsync(HttpListenerContext ctx)
    {
        using var reader = new StreamReader(ctx.Request.InputStream, ctx.Request.ContentEncoding);
        string body = await reader.ReadToEndAsync();
        var req = JsonSerializer.Deserialize<ExecRequest>(body, JsonOpts);
        if (req?.Args == null || req.Args.Length == 0)
        {
            ctx.Response.StatusCode = 400;
            return;
        }

        var psi = new ProcessStartInfo(Environment.ProcessPath!)
        {
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            UseShellExecute = false,
            CreateNoWindow = true
        };
        foreach (var a in req.Args) psi.ArgumentList.Add(a);

        ctx.Response.ContentType = "text/plain; charset=utf-8";
        ctx.Response.SendChunked = true;

        using var proc = Process.Start(psi)!;
        var stderrTask = proc.StandardError.ReadToEndAsync();

        var buf = new byte[512];
        int n;
        while ((n = await proc.StandardOutput.BaseStream.ReadAsync(buf)) > 0)
        {
            await ctx.Response.OutputStream.WriteAsync(buf.AsMemory(0, n));
            await ctx.Response.OutputStream.FlushAsync();
        }

        await proc.WaitForExitAsync();
        string stderr = await stderrTask;
        if (!string.IsNullOrWhiteSpace(stderr))
            await ctx.Response.OutputStream.WriteAsync(Encoding.UTF8.GetBytes($"\n{stderr}"));

        await ctx.Response.OutputStream.WriteAsync(Encoding.UTF8.GetBytes($"\n---EXIT:{proc.ExitCode}---"));
        await ctx.Response.OutputStream.FlushAsync();
    }

    private static async Task HandleBrowseAsync(HttpListenerResponse resp, bool folder, string filter = "")
    {
        string? result = await Task.Run(() =>
        {
            string? path = null;
            var thread = new Thread(() =>
            {
                if (folder)
                {
                    using var dlg = new System.Windows.Forms.FolderBrowserDialog();
                    dlg.Description = "Select Folder";
                    dlg.UseDescriptionForTitle = true;
                    if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                        path = dlg.SelectedPath;
                }
                else
                {
                    using var dlg = new System.Windows.Forms.OpenFileDialog();
                    dlg.Filter = string.IsNullOrEmpty(filter) ? "All Files|*.*" : filter;
                    if (dlg.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                        path = dlg.FileName;
                }
            });
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            thread.Join();
            return path;
        });

        await WriteJsonAsync(resp, new { path = result ?? "" });
    }

    private static async Task WriteJsonAsync(HttpListenerResponse resp, object data)
    {
        resp.ContentType = "application/json; charset=utf-8";
        await resp.OutputStream.WriteAsync(Encoding.UTF8.GetBytes(JsonSerializer.Serialize(data)));
    }

    private static int FindFreePort()
    {
        using var l = new TcpListener(IPAddress.Loopback, 0);
        l.Start();
        int port = ((IPEndPoint)l.LocalEndpoint).Port;
        l.Stop();
        return port;
    }

    private sealed class ExecRequest
    {
        public string[] Args { get; set; } = Array.Empty<string>();
    }
}
