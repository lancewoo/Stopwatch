.class public Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "LapTimesBaseAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflator:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "cxt"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, dataSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 44
    move-object v4, p2

    .line 45
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_1

    .line 47
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mLayoutInflator:Landroid/view/LayoutInflater;

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 52
    :cond_1
    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, t:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, t2:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_3

    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 58
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 59
    .local v0, laptime:D
    const-wide/16 v5, 0x0

    cmpg-double v5, v0, v5

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 60
    :cond_2
    invoke-static {v0, v1}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0           #laptime:D
    :goto_0
    return-object v4

    .line 62
    :cond_3
    iget-object v5, p0, Lcom/geekyouup/android/ustopwatch/fragments/LapTimesBaseAdapter;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/geekyouup/android/ustopwatch/TimeUtils;->createTimeString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
