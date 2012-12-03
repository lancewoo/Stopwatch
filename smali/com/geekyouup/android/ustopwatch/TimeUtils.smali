.class public Lcom/geekyouup/android/ustopwatch/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final START_TIME:Ljava/lang/String; = "00:00:00.000"

.field private static mHoursValue:I

.field private static mMinsValue:I

.field private static mSecsValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mSecsValue:I

    .line 20
    sput v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mMinsValue:I

    .line 21
    sput v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mHoursValue:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 19
    sput p0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mSecsValue:I

    return-void
.end method

.method static synthetic access$1(I)V
    .locals 0
    .parameter

    .prologue
    .line 20
    sput p0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mMinsValue:I

    return-void
.end method

.method static synthetic access$2(I)V
    .locals 0
    .parameter

    .prologue
    .line 21
    sput p0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mHoursValue:I

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mSecsValue:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mMinsValue:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mHoursValue:I

    return v0
.end method

.method public static createTimeSelectDialogLayout(Landroid/content/Context;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 13
    .parameter "cxt"
    .parameter "layoutInflater"

    .prologue
    .line 43
    const v11, 0x7f030002

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, countdownView:Landroid/view/View;
    const v11, 0x7f07000d

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 46
    .local v10, mSecsText:Landroid/widget/TextView;
    const v11, 0x7f07000a

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 47
    .local v7, mMinsText:Landroid/widget/TextView;
    const v11, 0x7f070007

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    .local v4, mHoursText:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    sget v12, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mSecsValue:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$1;

    invoke-direct {v11}, Lcom/geekyouup/android/ustopwatch/TimeUtils$1;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    sget v12, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mMinsValue:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$2;

    invoke-direct {v11}, Lcom/geekyouup/android/ustopwatch/TimeUtils$2;-><init>()V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    new-instance v11, Ljava/lang/StringBuilder;

    sget v12, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mHoursValue:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$3;

    invoke-direct {v11}, Lcom/geekyouup/android/ustopwatch/TimeUtils$3;-><init>()V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    const v11, 0x7f07000c

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 118
    .local v9, mSecsIncr:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$4;

    invoke-direct {v11, v10}, Lcom/geekyouup/android/ustopwatch/TimeUtils$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v11, 0x7f07000e

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 126
    .local v8, mSecsDown:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$5;

    invoke-direct {v11, v10}, Lcom/geekyouup/android/ustopwatch/TimeUtils$5;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v11, 0x7f070009

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 136
    .local v6, mMinsIncr:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$6;

    invoke-direct {v11, v7}, Lcom/geekyouup/android/ustopwatch/TimeUtils$6;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v11, 0x7f07000b

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 144
    .local v5, mMinsDown:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$7;

    invoke-direct {v11, v7}, Lcom/geekyouup/android/ustopwatch/TimeUtils$7;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v11, 0x7f070006

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 153
    .local v3, mHoursIncr:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$8;

    invoke-direct {v11, v4}, Lcom/geekyouup/android/ustopwatch/TimeUtils$8;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v11, 0x7f070008

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 161
    .local v2, mHoursDown:Landroid/widget/Button;
    new-instance v11, Lcom/geekyouup/android/ustopwatch/TimeUtils$9;

    invoke-direct {v11, v4}, Lcom/geekyouup/android/ustopwatch/TimeUtils$9;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, ll:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 175
    return-object v1
.end method

.method public static createTimeString(D)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    const-wide/16 v6, 0x0

    const/16 v9, 0xa

    .line 24
    cmpl-double v5, p0, v6

    if-nez v5, :cond_0

    const-string v5, "00:00:00.000"

    .line 37
    :goto_0
    return-object v5

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    .local v0, isNeg:Z
    cmpg-double v5, p0, v6

    if-gez v5, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    neg-double p0, p0

    .line 32
    :cond_1
    const-wide v5, 0x414b774000000000L

    div-double v5, p0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 33
    .local v1, numHours:I
    const-wide v5, 0x40ed4c0000000000L

    div-double v5, p0, v5

    mul-int/lit8 v7, v1, 0x3c

    int-to-double v7, v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 34
    .local v3, numMins:I
    const-wide v5, 0x408f400000000000L

    div-double v5, p0, v5

    mul-int/lit8 v7, v3, 0x3c

    int-to-double v7, v7

    sub-double/2addr v5, v7

    mul-int/lit16 v7, v1, 0xe10

    int-to-double v7, v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 35
    .local v4, numSecs:I
    const v5, 0x36ee80

    mul-int/2addr v5, v1

    int-to-double v5, v5

    sub-double v5, p0, v5

    const v7, 0xea60

    mul-int/2addr v7, v3

    int-to-double v7, v7

    sub-double/2addr v5, v7

    mul-int/lit16 v7, v4, 0x3e8

    int-to-double v7, v7

    sub-double/2addr v5, v7

    double-to-int v2, v5

    .line 37
    .local v2, numMillis:I
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v5, "-"

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v1, v9, :cond_3

    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v3, v9, :cond_4

    const-string v5, "0"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 38
    if-ge v4, v9, :cond_5

    const-string v5, "0"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v2, v9, :cond_6

    const-string v5, "00"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_2

    :cond_4
    const-string v5, ""

    goto :goto_3

    .line 38
    :cond_5
    const-string v5, ""

    goto :goto_4

    :cond_6
    const/16 v5, 0x64

    if-ge v2, v5, :cond_7

    const-string v5, "0"

    goto :goto_5

    :cond_7
    const-string v5, ""

    goto :goto_5
.end method

.method public static getDlgHours()I
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mHoursValue:I

    return v0
.end method

.method public static getDlgMins()I
    .locals 1

    .prologue
    .line 180
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mMinsValue:I

    return v0
.end method

.method public static getDlgSecs()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/geekyouup/android/ustopwatch/TimeUtils;->mSecsValue:I

    return v0
.end method
