.class Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;
.super Landroid/view/MenuInflater;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/android/actionbarcompat/ActionBarHelperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedMenuInflater"
.end annotation


# instance fields
.field mInflater:Landroid/view/MenuInflater;

.field final synthetic this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;


# direct methods
.method public constructor <init>(Lcom/example/android/actionbarcompat/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "inflater"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    .line 267
    invoke-direct {p0, p2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 268
    iput-object p3, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->mInflater:Landroid/view/MenuInflater;

    return-void
.end method

.method private loadActionBarMetadata(I)V
    .locals 9
    .parameter "menuResId"

    .prologue
    .line 283
    const/4 v4, 0x0

    .line 285
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v6, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    iget-object v6, v6, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 287
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 291
    .local v2, eventType:I
    const/4 v1, 0x0

    .line 292
    .local v1, eof:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 325
    if-eqz v4, :cond_0

    .line 326
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 329
    :cond_0
    return-void

    .line 293
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 318
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 295
    :pswitch_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    const-string v6, "http://schemas.android.com/apk/res/android"

    .line 300
    const-string v7, "id"

    const/4 v8, 0x0

    .line 299
    invoke-interface {v4, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 301
    .local v3, itemId:I
    if-eqz v3, :cond_2

    .line 305
    const-string v6, "http://schemas.android.com/apk/res/android"

    .line 306
    const-string v7, "showAsAction"

    const/4 v8, -0x1

    .line 305
    invoke-interface {v4, v6, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 307
    .local v5, showAsAction:I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 308
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 309
    :cond_3
    iget-object v6, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->this$0:Lcom/example/android/actionbarcompat/ActionBarHelperBase;

    iget-object v6, v6, Lcom/example/android/actionbarcompat/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 320
    .end local v1           #eof:Z
    .end local v2           #eventType:I
    .end local v3           #itemId:I
    .end local v5           #showAsAction:I
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v6, Landroid/view/InflateException;

    const-string v7, "Error inflating menu XML"

    invoke-direct {v6, v7, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v6

    .line 325
    if-eqz v4, :cond_4

    .line 326
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 328
    :cond_4
    throw v6

    .line 314
    .restart local v1       #eof:Z
    .restart local v2       #eventType:I
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 322
    .end local v1           #eof:Z
    .end local v2           #eventType:I
    :catch_1
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Landroid/view/InflateException;

    const-string v7, "Error inflating menu XML"

    invoke-direct {v6, v7, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public inflate(ILandroid/view/Menu;)V
    .locals 1
    .parameter "menuRes"
    .parameter "menu"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->loadActionBarMetadata(I)V

    .line 274
    iget-object v0, p0, Lcom/example/android/actionbarcompat/ActionBarHelperBase$WrappedMenuInflater;->mInflater:Landroid/view/MenuInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 275
    return-void
.end method
