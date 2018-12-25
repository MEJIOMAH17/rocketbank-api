.class public final Lru/rocketbank/core/network/model/TemplateEditBody;
.super Ljava/lang/Object;
.source "TemplateEditBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/network/model/TemplateEditBody$Content;
    }
.end annotation


# instance fields
.field private paymentTemplate:Lru/rocketbank/core/network/model/TemplateEditBody$Content;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_template"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lru/rocketbank/core/network/model/TemplateEditBody$Content;

    invoke-direct {v0}, Lru/rocketbank/core/network/model/TemplateEditBody$Content;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/network/model/TemplateEditBody;->paymentTemplate:Lru/rocketbank/core/network/model/TemplateEditBody$Content;

    return-void
.end method


# virtual methods
.method public final getPaymentTemplate()Lru/rocketbank/core/network/model/TemplateEditBody$Content;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/core/network/model/TemplateEditBody;->paymentTemplate:Lru/rocketbank/core/network/model/TemplateEditBody$Content;

    return-object v0
.end method

.method public final setPaymentTemplate(Lru/rocketbank/core/network/model/TemplateEditBody$Content;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lru/rocketbank/core/network/model/TemplateEditBody;->paymentTemplate:Lru/rocketbank/core/network/model/TemplateEditBody$Content;

    return-void
.end method
