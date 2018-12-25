.class public final Lru/rocketbank/core/events/EventHelper;
.super Ljava/lang/Object;
.source "EventHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/events/EventHelper$IEvent;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/events/EventHelper;

.field private static final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lru/rocketbank/core/events/EventHelper;

    invoke-direct {v0}, Lru/rocketbank/core/events/EventHelper;-><init>()V

    sput-object v0, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    .line 6
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sput-object v0, Lru/rocketbank/core/events/EventHelper;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Lru/rocketbank/core/events/EventHelper$IEvent;)V
    .locals 1

    const-string v0, "iEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lru/rocketbank/core/events/EventHelper;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
