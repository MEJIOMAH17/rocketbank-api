.class public final Lru/rocketbank/core/events/CheckCardEvent;
.super Ljava/lang/Object;
.source "CheckCardEvent.kt"


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final plasticsCheckResponse:Lru/rocketbank/core/network/model/PlasticsCheckResponse;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Landroid/view/View;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lru/rocketbank/core/events/CheckCardEvent;->plasticsCheckResponse:Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    .line 25
    iput-object p1, p0, Lru/rocketbank/core/events/CheckCardEvent;->exception:Ljava/lang/Throwable;

    .line 26
    iput-object p2, p0, Lru/rocketbank/core/events/CheckCardEvent;->view:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/core/network/model/PlasticsCheckResponse;Landroid/view/View;)V
    .locals 1

    const-string v0, "plasticsCheckResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/events/CheckCardEvent;->plasticsCheckResponse:Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    .line 19
    iput-object p2, p0, Lru/rocketbank/core/events/CheckCardEvent;->view:Landroid/view/View;

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lru/rocketbank/core/events/CheckCardEvent;->exception:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/core/events/CheckCardEvent;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getPlasticsCheckResponse()Lru/rocketbank/core/network/model/PlasticsCheckResponse;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/events/CheckCardEvent;->plasticsCheckResponse:Lru/rocketbank/core/network/model/PlasticsCheckResponse;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 13
    iget-object v0, p0, Lru/rocketbank/core/events/CheckCardEvent;->view:Landroid/view/View;

    return-object v0
.end method
