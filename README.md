# Various Ricing Configurations

Yes. I am a nerd. How could you tell?

To use these configs, you'll need:

- [Albert](https://albertlauncher.github.io/)
- [Conky](https://conky.cc/)

The `boot-conky.sh` script is designed to be a parent script which holds ownership over the various conky instances which need to be spawned.
The best way to set up conky is with either a systemd unit that runs and kills that script, or just with a startup task.
