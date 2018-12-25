.class final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$1;
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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 198
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$onLocationNotChecked$dialog$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getLOCATION_REQUEST$cp()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
