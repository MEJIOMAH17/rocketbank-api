.class public Lru/rocketbank/core/model/transfers/PaymentTemplates;
.super Ljava/lang/Object;
.source "PaymentTemplates.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public templates:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_templates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
