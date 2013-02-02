.class public Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;
.super Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;
.source "UltimateStopwatchActivity.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final IS_HONEYCOMB_OR_ABOVE:Z = false

.field private static final KEY_MODE:Ljava/lang/String; = "usw_mode"

.field public static final MSG_NEW_TIME_DOUBLE:Ljava/lang/String; = "msg_new_time_double"

.field public static final MSG_REQUEST_COUNTDOWN_DLG:Ljava/lang/String; = "msg_usw_counter"

.field public static final MSG_UPDATE_COUNTER_TIME:Ljava/lang/String; = "msg_update_counter"

.field private static final PREFS_NAME:Ljava/lang/String; = "usw_main_prefs"

.field public static final SOUND_ALARM:I = 0x1

.field private static final WAKE_LOCK_KEY:Ljava/lang/String; = "ustopwatch"

.field private static mHoursValue:I

.field private static mMinsValue:I

.field private static mSecsValue:I


# instance fields
.field public isXLarge:Z

.field private mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

.field private mCurrentTimeMillis:D

.field private mDialogOnScreen:Z

.field private mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

.field private mPowerMan:Landroid/os/PowerManager;

.field private mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private soundPool:Landroid/media/SoundPool;

.field private soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->IS_HONEYCOMB_OR_ABOVE:Z

    .line 229
    sput v1, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mHoursValue:I

    .line 230
    sput v1, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mMinsValue:I

    .line 231
    sput v1, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mSecsValue:I

    .line 38
    return-void

    :cond_0
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->isXLarge:Z

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCurrentTimeMillis:D

    .line 227
    iput-boolean v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    return-object v0
.end method

.method static synthetic access$1(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCurrentTimeMillis:D

    return-void
.end method

.method static synthetic access$10()I
    .locals 1

    .prologue
    .line 230
    sget v0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mMinsValue:I

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 231
    sget v0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mSecsValue:I

    return v0
.end method

.method static synthetic access$2(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)D
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCurrentTimeMillis:D

    return-wide v0
.end method

.method static synthetic access$3(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    return-object v0
.end method

.method static synthetic access$4(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    return-void
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 229
    sput p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mHoursValue:I

    return-void
.end method

.method static synthetic access$6(I)V
    .locals 0
    .parameter

    .prologue
    .line 230
    sput p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mMinsValue:I

    return-void
.end method

.method static synthetic access$7(I)V
    .locals 0
    .parameter

    .prologue
    .line 231
    sput p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mSecsValue:I

    return-void
.end method

.method static synthetic access$8(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    return-object v0
.end method

.method static synthetic access$9()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mHoursValue:I

    return v0
.end method

.method private requestAPI11TimeDialog()V
    .locals 9

    .prologue
    const/16 v8, 0x3b

    .line 246
    iget-boolean v6, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    if-eqz v6, :cond_0

    .line 287
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 250
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, ll:Landroid/view/View;
    const v6, 0x7f07000f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker;

    .line 253
    .local v3, npHours:Landroid/widget/NumberPicker;
    const/16 v6, 0x63

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 254
    sget v6, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mHoursValue:I

    invoke-virtual {v3, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 256
    const v6, 0x7f070010

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    .line 257
    .local v4, npMins:Landroid/widget/NumberPicker;
    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 258
    sget v6, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mMinsValue:I

    invoke-virtual {v4, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 260
    const v6, 0x7f070011

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 261
    .local v5, npSecs:Landroid/widget/NumberPicker;
    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 262
    sget v6, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mSecsValue:I

    invoke-virtual {v5, v6}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 264
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 265
    .local v2, mSelectTime:Landroid/app/AlertDialog;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 266
    const v6, 0x7f080007

    invoke-virtual {p0, v6}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V
############
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
############
    .line 267
    const v6, 0x7f080008

    invoke-virtual {p0, v6}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 268
    new-instance v7, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$3;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    .line 267
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 278
    const v6, 0x7f080009

    invoke-virtual {p0, v6}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 279
    new-instance v7, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$4;

    invoke-direct {v7, p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$4;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    .line 278
    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 284
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 286
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    goto :goto_0
.end method

.method private requestPreAPI11TimeDialog()V
    .locals 6

    .prologue
    .line 292
    iget-boolean v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    if-eqz v4, :cond_0

    .line 324
    :goto_0
    return-void

    .line 296
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 297
    .local v1, inflator:Landroid/view/LayoutInflater;
    invoke-static {p0, v1}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeSelectDialogLayout(Landroid/content/Context;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, countdownView:Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 301
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 304
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 305
    .local v3, mSelectTime:Landroid/app/AlertDialog;
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 306
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    const v4, 0x7f080008

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;

    invoke-direct {v5, p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$5;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 317
    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$6;

    invoke-direct {v5, p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$6;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 321
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 323
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mDialogOnScreen:Z

    goto :goto_0
.end method


# virtual methods
.method public notifyCountdownComplete()V
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->playAlarm()V

    .line 340
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 341
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 342
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->setContentView(I)V

    .line 65
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mPowerMan:Landroid/os/PowerManager;

    .line 66
    invoke-virtual {p0, v3}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->setVolumeControlStream(I)V

    .line 68
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x64

    invoke-direct {v1, v3, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPool:Landroid/media/SoundPool;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPoolMap:Ljava/util/HashMap;

    .line 70
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f04

    invoke-virtual {v3, p0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 75
    .local v0, screenSize:I
    if-ne v0, v5, :cond_0

    .line 76
    invoke-virtual {p0, v5}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->setRequestedOrientation(I)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 81
    const v2, 0x7f070019

    .line 80
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    .line 83
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 84
    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    .line 83
    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    .line 86
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v1, p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->setApplication(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    .line 87
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    new-instance v2, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;

    invoke-direct {v2, p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$1;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->setHandler(Landroid/os/Handler;)V

    .line 103
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 104
    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    .line 103
    iput-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    .line 106
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v1

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    invoke-virtual {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->setLaptimeListener(Lcom/geekyouup/android/ustopwatch/fragments/LapTimeListener;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 151
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 152
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 159
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f07001f

    if-ne v4, v5, :cond_5

    .line 165
    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v4}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getMode()I

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 167
    .local v0, newMode:I
    :goto_0
    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v4, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->setMode(I)V

    .line 168
    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    invoke-virtual {v4, v0}, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->setMode(I)V

    .line 169
    if-nez v0, :cond_4

    const v4, 0x7f080011

    :goto_1
    invoke-virtual {p0, v4}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->setTitle(I)V

    .line 171
    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v4}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getMode()I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestTimeDialog()V

    .line 173
    :cond_0
    sget-boolean v4, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->IS_HONEYCOMB_OR_ABOVE:Z

    if-eqz v4, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->invalidateOptionsMenu()V

    .line 179
    :cond_1
    sget-boolean v4, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->IS_HONEYCOMB_OR_ABOVE:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    invoke-virtual {v4}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 181
    iget-object v4, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mLapTimesFragment:Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;

    invoke-virtual {v4}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesFragment;->getView()Landroid/view/View;

    move-result-object v4

    const-string v5, "rotationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 182
    .local v1, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 183
    new-instance v4, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity$2;-><init>(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;I)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 213
    .end local v0           #newMode:I
    .end local v1           #oa:Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_2
    return v3

    .line 166
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    .restart local v0       #newMode:I
    :cond_4
    const v4, 0x7f080012

    goto :goto_1

    .line 205
    .end local v0           #newMode:I
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f070023

    if-ne v4, v5, :cond_6

    .line 207
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v2, startLaptimes:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 209
    .end local v2           #startLaptimes:Landroid/content/Intent;
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f070024

    if-ne v4, v5, :cond_2

    .line 210
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->reset(Landroid/content/Context;)V

    goto :goto_2

    .line 181
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0x42t
    .end array-data
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onPause()V

    .line 115
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 117
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->saveTimes(Landroid/content/Context;)V

    .line 119
    const-string v2, "usw_main_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "usw_mode"

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mStopwatchFragment:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;

    invoke-virtual {v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchFragment;->getMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-super {p0}, Lcom/example/android/actionbarcompat/ActionBarFragmentActivity;->onResume()V

    .line 129
    invoke-static {}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->getInstance()Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/geekyouup/android/ustopwatch/fragments/LapTimeRecorder;->loadTimes(Landroid/content/Context;)V

    .line 132
    invoke-static {p0}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater;->cancelCountdownAlarm(Landroid/content/Context;)V

    .line 134
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mPowerMan:Landroid/os/PowerManager;

    const/4 v3, 0x6

    .line 135
    const-string v4, "ustopwatch"

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 138
    const-string v2, "usw_main_prefs"

    invoke-virtual {p0, v2, v5}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 139
    .local v1, settings:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 141
    const-string v2, "usw_mode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, mode:I
    if-nez v0, :cond_1

    const v2, 0x7f080011

    :goto_0
    invoke-virtual {p0, v2}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->setTitle(I)V

    .line 143
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->mCounterView:Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;

    invoke-virtual {v2, v0}, Lcom/geekyouup/android/ustopwatch/fragments/TimeFragment;->setMode(I)V

    .line 145
    .end local v0           #mode:I
    :cond_0
    return-void

    .line 142
    .restart local v0       #mode:I
    :cond_1
    const v2, 0x7f080012

    goto :goto_0
.end method

.method public playAlarm()V
    .locals 8

    .prologue
    .line 329
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 331
    .local v7, mgr:Landroid/media/AudioManager;
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v2, v0

    .line 332
    .local v2, streamVolume:F
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->soundPoolMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 333
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    .line 332
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v2           #streamVolume:F
    .end local v7           #mgr:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestTimeDialog()V
    .locals 2

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestAPI11TimeDialog()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->requestPreAPI11TimeDialog()V

    goto :goto_0
.end method
