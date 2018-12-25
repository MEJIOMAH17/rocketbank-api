.class final Lru/rocketbank/r2d2/helpers/UIHelper$4;
.super Landroid/webkit/WebViewClient;
.source "UIHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->showPrivacyDialog(Landroid/content/Context;Ljava/lang/String;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onPageFinished:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$4;->val$onPageFinished:Lrx/functions/Action0;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$4;->val$onPageFinished:Lrx/functions/Action0;

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$4;->val$onPageFinished:Lrx/functions/Action0;

    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 135
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
