# Istories SDK configuration


_shared_config = None


def shared_config():
    """Return the process-wide config, built once on first use.

    The SDK reads the config on every request and never writes to it, so one
    instance is shared by every client rather than rebuilt per client.

    The returned dict is shared: treat it as read-only. Callers that need to
    mutate should use make_config, which always returns a fresh copy.
    """
    global _shared_config
    if _shared_config is None:
        _shared_config = make_config()
    return _shared_config


def make_config():
    """Build a fresh, fully materialised config dict.

    Every call rebuilds the whole structure, so prefer shared_config unless
    you need a private copy you intend to mutate.
    """
    return {
        "main": {
            "name": "Istories",
            "slug": "istories",
            "version": "0.0.1",
            "target": "py",
        },
        "feature": {
            "test": {
        "options": {
          "active": False,
        },
      },
        },
        "options": {
            "base": "https://istories.media",
            "headers": {
        "content-type": "application/json",
      },
            "entity": {
                "new": {},
            },
        },
        "entity": {
      "new": {
        "fields": [
          {
            "name": "componentChunkName",
            "short": "Component chunk identifier",
            "type": "`$STRING`",
          },
          {
            "name": "path",
            "short": "Page path",
            "type": "`$STRING`",
          },
          {
            "name": "result",
            "type": "`$OBJECT`",
          },
          {
            "name": "staticQueryHashes",
            "short": "Static query hashes",
            "type": "`$ARRAY`",
          },
        ],
        "name": "new",
        "op": {
          "list": {
            "input": "data",
            "name": "list",
            "points": [
              {
                "args": {},
                "kind": "http",
                "method": "GET",
                "orig": "/page-data/news/page-data.json",
                "parts": [
                  "page-data",
                  "news",
                  "page-data.json",
                ],
                "select": {
                  "$action": "page_data",
                },
                "transform": {
                  "req": "`reqdata`",
                  "res": "`body`",
                },
              },
            ],
          },
        },
        "relations": {
          "ancestors": [],
        },
      },
    },
    }
