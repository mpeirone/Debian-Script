
Change suspend option with file /etc/systemd/sleep.conf.d/nosuspend.conf:

```
[Sleep]
AllowSuspend=no
AllowHibernation=no
AllowSuspendThenHibernate=no
AllowHybridSleep=no
```

Change display blanking time(not work from ssh):
```
 setterm -blank [minute]
```
