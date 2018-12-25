.class public Lru/rocketbank/core/model/transfers/Template$Remittance;
.super Ljava/lang/Object;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/transfers/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Remittance"
.end annotation


# instance fields
.field public amount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field public bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_name"
    .end annotation
.end field

.field public bik:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bik"
    .end annotation
.end field

.field public corrBank:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corr_bank"
    .end annotation
.end field

.field public corrNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "corr_number"
    .end annotation
.end field

.field public iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field public inn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inn"
    .end annotation
.end field

.field public kpp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "kpp"
    .end annotation
.end field

.field public nds:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nds"
    .end annotation
.end field

.field public purpose:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "purpose"
    .end annotation
.end field

.field public recipientName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_name"
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/core/model/transfers/Template;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$Remittance;->this$0:Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
