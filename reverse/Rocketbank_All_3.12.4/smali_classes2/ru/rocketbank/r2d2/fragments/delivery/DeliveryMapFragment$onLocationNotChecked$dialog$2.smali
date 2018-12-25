.class final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$2;
.super Ljava/lang/Object;
.source "DeliveryMapFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->onLocationNotChecked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 201
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$2;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f110091

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
