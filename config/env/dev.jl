using Genie.Configuration, Logging

const config = Settings(
    server_port = 8000,
    server_host = "localhost",
    log_level = Logging.Error,
    log_to_file = false,
    server_handle_static_files = true, # for best performance set up Nginx or Apache web proxies and set this to false
    path_build = "public",
    format_julia_builds = false,
    format_html_output = false,
    server_document_root = "public",
    cors_allowed_origins = [
        "http://localhost:3000",
        "http://localhost:8000",
        "https://localhost:3000",
        "https://localhost:8000",
        "localhost",
        "http://localhost",
        "http://127.0.0.1",
    ],
    cors_headers = Dict{String,String}(
        "Access-Control-Allow-Headers" => "access-control-allow-origin,content-type",
        "Access-Control-Allow-Methods" => "POST,GET,OPTION,PUT,DELETE,HEAD,Allow",
        "Access-Control-Allow-Credentials" => "",
        "Access-Control-Allow-Origin" => "*",
        "Access-Control-Expose-Headers" => "Access-Control-allow-origin",
        "Access-Control-Max-Age" => "86400",
    ),
)

if config.server_handle_static_files
    @warn(
        "For performance reasons Genie should not serve static files (.css, .js, .jpg, .png, etc) in production.
         It is recommended to set up Apache or Nginx as a reverse proxy and cache to serve static assets."
    )
end

ENV["JULIA_REVISE"] = "off"
