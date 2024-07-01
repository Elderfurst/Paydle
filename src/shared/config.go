package shared

import "github.com/kkyr/fig"

type Configuration struct {
	Port int `fig:"port"`
}

var Config Configuration

// InitializeConfig creates a global configuration instance from the config file, panics if an error happens while loading
func InitializeConfig() {
	err := fig.Load(&Config, fig.File("config.yaml"))

	if err != nil {
		panic(err)
	}

	err = fig.Load(&Config, fig.UseEnv("PAYDLE"))

	if err != nil {
		panic(err)
	}
}
