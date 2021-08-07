defmodule Surface.Catalogue.Router do
  defmacro surface_catalogue(path, opts \\ []) do
    quote bind_quoted: binding() do
      scope path, alias: false, as: false do
        import Phoenix.LiveView.Router, only: [live: 2]

        alias Surface.Catalogue.{
          LayoutView,
          PageLive,
          ExampleLive,
          PlaygroundLive
        }

        live "/", PageLive
        live "/components/:component/", PageLive
        live "/components/:component/:action", PageLive
        live "/examples/:example", ExampleLive
        live "/playgrounds/:playground", PlaygroundLive
      end
    end
  end
end
