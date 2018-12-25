.class final Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;
.super Ljava/lang/Object;
.source "Enter3dSecActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 103
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient$shouldOverrideUrlLoading$1;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;

    iget-object v0, v0, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity$SecurityCodeWebViewClient;->this$0:Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;->access$requestCode(Lru/rocketbank/r2d2/activities/c2c/Enter3dSecActivity;)V

    return-void
.end method
