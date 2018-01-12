Path.join(["rel", "plugins", "*.exs"])
|> Path.wildcard()
|> Enum.map(&Code.eval_file(&1))

use Mix.Releases.Config,
  default_release: :default,
  default_environment: Mix.env()

environment :dev do
  set include_erts: true
  set include_src: false
  set cookie: :"U?h)~?M8/L/ZWn&a*;qk!wn}NYwHlmu{5~PQ4Y/~=YcK?7a/60bP(1F7gz4_].,6"
end

release :ex_demo do
  set version: current_version(:ex_demo)
  set applications: [
    :runtime_tools
  ]
end
