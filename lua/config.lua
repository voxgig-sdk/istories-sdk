-- Istories SDK configuration

-- Build a fresh, fully materialised config table. Every call rebuilds the
-- whole structure, so prefer require("config_shared") unless you need a
-- private copy you intend to mutate.
local function make_config()
  return {
    main = {
      name = "Istories",
      slug = "istories",
      version = "0.0.1",
      target = "lua",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
      },
    },
    options = {
      base = "https://istories.media",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["new"] = {},
      },
    },
    entity = {
      ["new"] = {
        ["fields"] = {
          {
            ["name"] = "componentChunkName",
            ["short"] = "Component chunk identifier",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "path",
            ["short"] = "Page path",
            ["type"] = "`$STRING`",
          },
          {
            ["name"] = "result",
            ["type"] = "`$OBJECT`",
          },
          {
            ["name"] = "staticQueryHashes",
            ["short"] = "Static query hashes",
            ["type"] = "`$ARRAY`",
          },
        },
        ["name"] = "new",
        ["op"] = {
          ["list"] = {
            ["input"] = "data",
            ["name"] = "list",
            ["points"] = {
              {
                ["args"] = {},
                ["kind"] = "http",
                ["method"] = "GET",
                ["orig"] = "/page-data/news/page-data.json",
                ["parts"] = {
                  "page-data",
                  "news",
                  "page-data.json",
                },
                ["select"] = {
                  ["$action"] = "page_data",
                },
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
              },
            },
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
