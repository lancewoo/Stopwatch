.class public Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;
.super Ljava/lang/Thread;
.source "StopwatchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopwatchThead"
.end annotation


# static fields
.field private static final KEY_LASTTIME:Ljava/lang/String; = "lasttime"

.field private static final KEY_NOWTIME:Ljava/lang/String; = "currenttime"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_STOPWATCH_MODE:Ljava/lang/String; = "stopwatchmode"

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_READY:I = 0x3

.field public static final STATE_RUNNING:I = 0x4


# instance fields
.field private mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

.field private mAppOffsetX:I

.field private mAppOffsetY:I

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mBackgroundImageTouched:Landroid/graphics/Bitmap;

.field private mBackgroundStartY:I

.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mContext:Landroid/content/Context;

.field private mDisplayTimeMillis:D

.field private mHandler:Landroid/os/Handler;

.field private mLastTime:J

.field private mMinHand:Landroid/graphics/drawable/Drawable;

.field private mMinsAngle:D

.field private mMinsCenterX:I

.field private mMinsCenterY:I

.field private mMinsHalfHeight:I

.field private mMinsHalfWidth:I

.field private mMode:I

.field private mRun:Z

.field private mScaleFactor:D

.field private mSecHand:Landroid/graphics/drawable/Drawable;

.field private mSecsAngle:D

.field private mSecsCenterX:I

.field private mSecsCenterY:I

.field private mSecsHalfHeight:I

.field private mSecsHalfWidth:I

.field private mSkipDraw:Z

.field private mStopwatchMode:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTouching:Z

.field final synthetic this$0:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

.field private twoPI:D


# direct methods
.method public constructor <init>(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;Landroid/view/SurfaceHolder;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "surfaceHolder"
    .parameter "context"

    .prologue
    const/16 v6, 0x9c

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 114
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->this$0:Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView;

    .line 107
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    const-wide/high16 v1, 0x3ff0

    iput-wide v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    .line 60
    iput-boolean v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mTouching:Z

    .line 68
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetX:I

    .line 69
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    .line 70
    iput-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsAngle:D

    .line 71
    iput-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsAngle:D

    .line 72
    iput-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 73
    const-wide v1, 0x401921fb54442d18L

    iput-wide v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->twoPI:D

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    .line 76
    const/16 v1, 0x140

    iput v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    .line 77
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    .line 78
    iput v6, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterX:I

    .line 79
    const/16 v1, 0xe6

    iput v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterY:I

    .line 80
    iput v6, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterX:I

    .line 81
    const/16 v1, 0xb9

    iput v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterY:I

    .line 83
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    .line 84
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    .line 85
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    .line 86
    iput v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    .line 95
    const/4 v1, 0x3

    iput v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    .line 98
    iput-boolean v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mRun:Z

    .line 99
    iput-boolean v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSkipDraw:Z

    .line 109
    iput-object p2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 110
    iput-object p3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    .line 112
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->loadGraphics(Landroid/content/res/Resources;Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->restoreState(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private broadcastClockTime(D)V
    .locals 4
    .parameter "mTime"

    .prologue
    .line 388
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 390
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "msg_update_counter"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    const-string v2, "msg_new_time_double"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 393
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 394
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 278
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 279
    iget-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImageTouched:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 283
    iget-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsAngle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterY:I

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 284
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterX:I

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterY:I

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v2, v3

    .line 285
    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterX:I

    iget v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterY:I

    iget v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    add-int/2addr v4, v5

    .line 284
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsAngle:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterY:I

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 292
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterX:I

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterY:I

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v2, v3

    .line 293
    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterX:I

    iget v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterY:I

    iget v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    add-int/2addr v4, v5

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 296
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private loadGraphics(Landroid/content/res/Resources;Z)V
    .locals 2
    .parameter "res"
    .parameter "isStopwatch"

    .prologue
    .line 118
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSkipDraw:Z

    .line 122
    if-eqz p2, :cond_1

    .line 124
    const v0, 0x7f020004

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 125
    const v0, 0x7f020007

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImageTouched:Landroid/graphics/Bitmap;

    .line 126
    const v0, 0x7f020014

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 127
    const v0, 0x7f02000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    .line 137
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    .line 139
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    .line 140
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    .line 142
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    .line 143
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetX:I

    .line 145
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->scaleImages()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSkipDraw:Z

    .line 147
    return-void

    .line 130
    :cond_1
    const v0, 0x7f020005

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 131
    const v0, 0x7f020006

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImageTouched:Landroid/graphics/Bitmap;

    .line 132
    const v0, 0x7f020015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecHand:Landroid/graphics/drawable/Drawable;

    .line 133
    const v0, 0x7f020010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinHand:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private requestCountdownDialog()V
    .locals 4

    .prologue
    .line 400
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 402
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "msg_usw_counter"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 405
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private resetVars()V
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 186
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    .line 187
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 188
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsAngle:D

    .line 189
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsAngle:D

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 192
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->broadcastClockTime(D)V

    .line 185
    monitor-exit v1

    .line 194
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized restoreState(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 331
    if-eqz p1, :cond_0

    .line 332
    :try_start_1
    const-string v0, "state"

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    .line 333
    const-string v0, "lasttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 334
    const-string v0, "currenttime"

    const-wide/16 v2, 0x0

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 335
    const-string v0, "stopwatchmode"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    .line 336
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    invoke-direct {p0, v0, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->loadGraphics(Landroid/content/res/Resources;Z)V

    .line 337
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->updatePhysics()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater;->cancelCountdownAlarm(Landroid/content/Context;)V

    .line 330
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scaleImages()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v6, 0x3ff0

    .line 475
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 476
    .local v1, bgImageWidth:I
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 477
    .local v0, bgImageHeight:I
    iput-wide v6, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    .line 479
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    if-le v1, v2, :cond_0

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    int-to-double v2, v2

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    .line 480
    :cond_0
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    if-le v0, v2, :cond_1

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    int-to-double v2, v2

    int-to-double v4, v0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    .line 482
    :cond_1
    const-string v2, "USW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ScaleFactor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    cmpl-double v2, v2, v6

    if-eqz v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 488
    int-to-double v4, v0

    iget-wide v6, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 487
    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 486
    iput-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 492
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImageTouched:Landroid/graphics/Bitmap;

    int-to-double v3, v1

    iget-wide v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 493
    int-to-double v4, v0

    iget-wide v6, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 492
    invoke-static {v2, v3, v4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 491
    iput-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImageTouched:Landroid/graphics/Bitmap;

    .line 496
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfHeight:I

    .line 497
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsHalfWidth:I

    .line 498
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfHeight:I

    .line 499
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mScaleFactor:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsHalfWidth:I

    .line 501
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 502
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 505
    :cond_2
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    .line 506
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    if-gez v2, :cond_3

    .line 507
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    neg-int v2, v2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetY:I

    .line 509
    :cond_3
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    mul-int/lit8 v3, v0, 0x6

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterY:I

    .line 510
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundStartY:I

    mul-int/lit8 v3, v0, 0x17

    div-int/lit8 v3, v3, 0x32

    add-int/2addr v2, v3

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterY:I

    .line 512
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetX:I

    .line 514
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsCenterX:I

    .line 515
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsCenterX:I

    .line 516
    return-void
.end method

.method private updatePhysics()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const-wide/16 v8, 0x0

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, now:J
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    if-ne v2, v10, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 252
    :goto_0
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->twoPI:D

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    const-wide v6, 0x413b774000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsAngle:D

    .line 253
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->twoPI:D

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    const-wide v6, 0x40ed4c0000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsAngle:D

    .line 255
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    cmpg-double v2, v2, v8

    if-gez v2, :cond_0

    iput-wide v8, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->broadcastClockTime(D)V

    .line 259
    iput-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 262
    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    if-ne v2, v10, :cond_1

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_1

    .line 263
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->resetVars()V

    .line 264
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    invoke-virtual {v2}, Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;->notifyCountdownComplete()V

    .line 266
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->requestCountdownDialog()V

    .line 270
    :cond_1
    return-void

    .line 245
    :cond_2
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    iget-wide v4, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    goto :goto_0

    .line 248
    :cond_3
    iput-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    goto :goto_0

    .line 258
    :cond_4
    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    neg-double v2, v2

    goto :goto_1
.end method


# virtual methods
.method public doKeypress(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 442
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->startStop()V

    .line 444
    const/4 v0, 0x1

    .line 446
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doStart()V
    .locals 4

    .prologue
    .line 161
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 163
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 164
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    .line 161
    monitor-exit v1

    .line 166
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doTrackBall(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->startStop()V

    .line 453
    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mRun:Z

    return v0
.end method

.method public isStopwatchMode()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iput-boolean v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mTouching:Z

    .line 432
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->startStop()V

    .line 437
    :cond_0
    :goto_0
    return v1

    .line 433
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mTouching:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 173
    :try_start_0
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 174
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    .line 172
    :cond_0
    monitor-exit v1

    .line 176
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->resetVars()V

    .line 180
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->requestCountdownDialog()V

    .line 181
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->broadcastClockTime(D)V

    .line 182
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 210
    :goto_0
    iget-boolean v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mRun:Z

    if-nez v1, :cond_0

    .line 232
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    .line 214
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_3

    .line 217
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    iget v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->updatePhysics()V

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSkipDraw:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->doDraw(Landroid/graphics/Canvas;)V

    .line 217
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :cond_3
    if-eqz v0, :cond_4

    .line 224
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 227
    :cond_4
    const-wide/16 v1, 0x1e

    :try_start_2
    invoke-static {v1, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    :catchall_1
    move-exception v1

    .line 223
    if-eqz v0, :cond_5

    .line 224
    iget-object v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 227
    :cond_5
    const-wide/16 v2, 0x1e

    :try_start_5
    invoke-static {v2, v3}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 230
    :goto_1
    throw v1

    .line 228
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 6
    .parameter "map"

    .prologue
    const-wide/16 v4, 0x0

    .line 305
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 308
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater;->setCountdownAlarm(Landroid/content/Context;J)V

    .line 314
    :goto_0
    const-string v0, "state"

    iget v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 315
    const-string v0, "lasttime"

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 316
    const-string v0, "currenttime"

    iget-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    double-to-long v2, v2

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v0, "stopwatchmode"

    iget-boolean v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 305
    :goto_1
    monitor-exit v1

    .line 322
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/geekyouup/android/ustopwatch/AlarmUpdater;->cancelCountdownAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 319
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setApplication(Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;)V
    .locals 0
    .parameter "mApp"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mApp:Lcom/geekyouup/android/ustopwatch/UltimateStopwatchActivity;

    .line 151
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method public setIsStopwatchMode(Z)V
    .locals 1
    .parameter "isStopwatchMode"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mStopwatchMode:Z

    .line 425
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->resetVars()V

    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->loadGraphics(Landroid/content/res/Resources;Z)V

    .line 427
    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mRun:Z

    .line 352
    return-void
.end method

.method public setState(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 364
    :try_start_0
    iput p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    .line 365
    const-string v0, "USW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mode set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit v1

    .line 367
    return-void

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSurfaceSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 462
    :try_start_0
    iput p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasWidth:I

    .line 463
    iput p2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mCanvasHeight:I

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->loadGraphics(Landroid/content/res/Resources;Z)V

    .line 467
    const-string v0, "USW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppXOffset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mAppOffsetX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bgImageWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mBackgroundImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    monitor-exit v1

    .line 469
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTime(III)V
    .locals 8
    .parameter "hour"
    .parameter "minute"
    .parameter "seconds"

    .prologue
    const-wide v6, 0x401921fb54442d18L

    .line 197
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 198
    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 200
    int-to-double v2, p2

    const-wide/high16 v4, 0x403e

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMinsAngle:D

    .line 201
    int-to-double v2, p3

    const-wide/high16 v4, 0x404e

    div-double/2addr v2, v4

    mul-double/2addr v2, v6

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSecsAngle:D

    .line 202
    const v0, 0x36ee80

    mul-int/2addr v0, p1

    const v2, 0xea60

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    mul-int/lit16 v2, p3, 0x3e8

    add-int/2addr v0, v2

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    .line 204
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->doStart()V

    .line 197
    monitor-exit v1

    .line 206
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startStop()V
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->unpause()V

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    iget v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->pause()V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->doStart()V

    goto :goto_0
.end method

.method public unpause()V
    .locals 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->isStopwatchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mDisplayTimeMillis:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->resetVars()V

    .line 376
    invoke-direct {p0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->requestCountdownDialog()V

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    .line 380
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->mLastTime:J

    .line 379
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/geekyouup/android/ustopwatch/fragments/StopwatchView$StopwatchThead;->setState(I)V

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
