.class final Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ChangePhoneActivity;->onEventMainThread(Lru/rocketbank/core/events/CheckCardEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;->INSTANCE:Lru/rocketbank/r2d2/activities/ChangePhoneActivity$onEventMainThread$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    sget-object p1, Lru/rocketbank/core/events/EventHelper;->INSTANCE:Lru/rocketbank/core/events/EventHelper;

    new-instance p1, Lru/rocketbank/core/events/RetryEvent;

    invoke-direct {p1}, Lru/rocketbank/core/events/RetryEvent;-><init>()V

    check-cast p1, Lru/rocketbank/core/events/EventHelper$IEvent;

    invoke-static {p1}, Lru/rocketbank/core/events/EventHelper;->send(Lru/rocketbank/core/events/EventHelper$IEvent;)V

    return-void
.end method
