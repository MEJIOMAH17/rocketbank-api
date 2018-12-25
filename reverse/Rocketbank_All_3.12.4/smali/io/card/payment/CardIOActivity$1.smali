.class final Lio/card/payment/CardIOActivity$1;
.super Landroid/view/OrientationEventListener;
.source "CardIOActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/card/payment/CardIOActivity;->showCameraScannerOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/card/payment/CardIOActivity;


# direct methods
.method constructor <init>(Lio/card/payment/CardIOActivity;Landroid/content/Context;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lio/card/payment/CardIOActivity$1;->this$0:Lio/card/payment/CardIOActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 1

    .line 494
    iget-object v0, p0, Lio/card/payment/CardIOActivity$1;->this$0:Lio/card/payment/CardIOActivity;

    invoke-static {v0, p1}, Lio/card/payment/CardIOActivity;->access$000(Lio/card/payment/CardIOActivity;I)V

    return-void
.end method
