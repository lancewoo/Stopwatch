.class public Lcom/example/android/actionbarcompat/MainActivity;
.super Lcom/example/android/actionbarcompat/ActionBarActivity;
.source "MainActivity.java"


# instance fields
.field private mAlternateTitle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/example/android/actionbarcompat/ActionBarActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/example/android/actionbarcompat/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z

    return v0
.end method

.method static synthetic access$1(Lcom/example/android/actionbarcompat/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/example/android/actionbarcompat/MainActivity;->mAlternateTitle:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/example/android/actionbarcompat/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/example/android/actionbarcompat/MainActivity;->setContentView(I)V

    .line 33
    sget v0, Lcom/example/android/actionbarcompat/R$id;->toggle_title:I

    invoke-virtual {p0, v0}, Lcom/example/android/actionbarcompat/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/example/android/actionbarcompat/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/android/actionbarcompat/MainActivity$1;-><init>(Lcom/example/android/actionbarcompat/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/example/android/actionbarcompat/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 49
    .local v0, menuInflater:Landroid/view/MenuInflater;
    sget v1, Lcom/example/android/actionbarcompat/R$menu;->main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 53
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    invoke-super {p0, p1}, Lcom/example/android/actionbarcompat/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 60
    :pswitch_0
    const-string v0, "Tapped home"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
