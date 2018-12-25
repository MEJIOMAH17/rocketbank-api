.class Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$1;
.super Ljava/lang/Object;
.source "PinRegistrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;->onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$1;->this$0:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    sget-object p1, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance p1, Lru/rocketbank/core/events/RetryEvent;

    invoke-direct {p1}, Lru/rocketbank/core/events/RetryEvent;-><init>()V

    invoke-static {p1}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void
.end method
