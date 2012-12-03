.class public Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;
.super Ljava/lang/Object;
.source "LapTimeRecorder.java"


# static fields
.field private static final KEY_LAPTIME_X:Ljava/lang/String; = "LAPTIME_"

.field private static final PREFS_NAME_LAPTIMES:Ljava/lang/String; = "usw_prefs_laptimes"

.field private static final mLapTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;


# instance fields
.field private mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mSelf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    invoke-direct {v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;-><init>()V

    sput-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mSelf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    .line 22
    :cond_0
    sget-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mSelf:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    return-object v0
.end method


# virtual methods
.method public getTimes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadTimes(Landroid/content/Context;)V
    .locals 8
    .parameter "cxt"

    .prologue
    const-wide/16 v6, -0x1

    .line 27
    const-string v2, "usw_prefs_laptimes"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, lapTimeNum:I
    sget-object v2, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 31
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LAPTIME_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 37
    .end local v0           #lapTimeNum:I
    :cond_0
    return-void

    .line 33
    .restart local v0       #lapTimeNum:I
    :cond_1
    sget-object v2, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LAPTIME_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recordLapTime(DLandroid/content/Context;)V
    .locals 3
    .parameter "time"
    .parameter "cxt"

    .prologue
    const/4 v2, 0x0

    .line 57
    sget-object v0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    invoke-interface {v0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;->lapTimesUpdated()V

    .line 60
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    if-nez v0, :cond_1

    const v0, 0x7f08000d

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    :cond_1
    return-void
.end method

.method public reset(Landroid/content/Context;)V
    .locals 4
    .parameter "cxt"

    .prologue
    .line 70
    sget-object v2, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 71
    const-string v2, "usw_prefs_laptimes"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    invoke-interface {v2}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;->lapTimesUpdated()V

    .line 76
    :cond_0
    return-void
.end method

.method public saveTimes(Landroid/content/Context;)V
    .locals 7
    .parameter "cxt"

    .prologue
    .line 41
    const-string v3, "usw_prefs_laptimes"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 42
    .local v2, settings:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 46
    sget-object v3, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 48
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 50
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 48
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #i:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LAPTIME_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLapTimes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setLaptimeListener(Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;)V
    .locals 0
    .parameter "ltl"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->mLTL:Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;

    .line 81
    return-void
.end method
