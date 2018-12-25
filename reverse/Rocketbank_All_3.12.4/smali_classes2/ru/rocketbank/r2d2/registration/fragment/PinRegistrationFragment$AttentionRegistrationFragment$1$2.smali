.class Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$2;
.super Ljava/lang/Object;
.source "PinRegistrationFragment.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;->call(Lru/rocketbank/core/model/PrivacyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1$2;->this$1:Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$AttentionRegistrationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 194
    sget-object v0, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance v0, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$SubmitEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$SubmitEvent;-><init>(Lru/rocketbank/r2d2/registration/fragment/PinRegistrationFragment$1;)V

    invoke-static {v0}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void
.end method
