.class public final Lru/rocketbank/core/network/model/WidgetResponse$Phone;
.super Ljava/lang/Object;
.source "WidgetResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/WidgetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Phone"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field final synthetic this$0:Lru/rocketbank/core/network/model/WidgetResponse;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/network/model/WidgetResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->this$0:Lru/rocketbank/core/network/model/WidgetResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->number:Ljava/lang/String;

    const-string p1, ""

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->operator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getOperator()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->number:Ljava/lang/String;

    return-void
.end method

.method public final setOperator(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetResponse$Phone;->operator:Ljava/lang/String;

    return-void
.end method
