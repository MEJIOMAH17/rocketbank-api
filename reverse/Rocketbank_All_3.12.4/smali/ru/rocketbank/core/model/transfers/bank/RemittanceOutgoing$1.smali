.class final Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemittanceOutgoing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing;-><init>(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;->INSTANCE:Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/model/transfers/bank/RemittanceOutgoing$1;->invoke(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
