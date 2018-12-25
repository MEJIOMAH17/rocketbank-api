.class public final Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;
.super Ljava/util/TimerTask;
.source "DeliveryMapFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FindAddressTask"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getPresenter$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment$FindAddressTask;->this$0:Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;->access$getAddressTextForRequest$p(Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/delivery/DeliveryMapPresenter;->searchAddress(Ljava/lang/String;)V

    return-void
.end method
