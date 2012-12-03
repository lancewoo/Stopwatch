.class public Lcom/geekyouup/android/ustopwatch/AlarmUpdater;
.super Ljava/lang/Object;
.source "AlarmUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelCountdownAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 20
    :try_start_0
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 22
    .local v0, alarmMan:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v1, defineIntent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    const/4 v3, 0x0

    const/high16 v4, 0x2000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 26
    .local v2, piWakeUp:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .end local v0           #alarmMan:Landroid/app/AlarmManager;
    .end local v1           #defineIntent:Landroid/content/Intent;
    .end local v2           #piWakeUp:Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const v4, 0x7f030007

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    :goto_1
    return-void

    .line 32
    :catch_0
    move-exception v3

    goto :goto_1

    .line 27
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static setCountdownAlarm(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "inMillis"

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 39
    .local v0, alarmMan:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, defineIntent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    const/high16 v3, 0x800

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 44
    .local v2, piWakeUp:Landroid/app/PendingIntent;
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 45
    :cond_0
    return-void
.end method
