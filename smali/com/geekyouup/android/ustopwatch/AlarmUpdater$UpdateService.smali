.class public Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;
.super Landroid/app/Service;
.source "AlarmUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geekyouup/android/ustopwatch/AlarmUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private notifyStatusBar()V
    .locals 9

    .prologue
    const v8, 0x7f080016

    .line 60
    new-instance v2, Landroid/app/Notification;

    const v4, 0x7f02000e

    invoke-virtual {p0, v8}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 64
    .local v2, notification:Landroid/app/Notification;
    const v4, -0x7f7f80

    :try_start_0
    iput v4, v2, Landroid/app/Notification;->ledARGB:I

    .line 65
    const/16 v4, 0x1f4

    iput v4, v2, Landroid/app/Notification;->ledOnMS:I

    .line 66
    const/16 v4, 0x3e8

    iput v4, v2, Landroid/app/Notification;->ledOffMS:I

    .line 67
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 68
    const/4 v4, 0x5

    iput v4, v2, Landroid/app/Notification;->audioStreamType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget v4, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, -0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, launcher:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 81
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/high16 v4, 0x7f08

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 82
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 84
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f030007

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    return-void

    .line 70
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #launcher:Landroid/content/Intent;
    .end local v3           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->notifyStatusBar()V

    .line 55
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater$UpdateService;->stopSelf()V

    .line 56
    return-void
.end method
