.class public Lru/rocketbank/core/model/transfers/Template$Card2Card;
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
    name = "Card2Card"
.end annotation


# instance fields
.field public amount:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field public linkedCard:Lru/rocketbank/core/model/card/LinkedCard;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linked_card"
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/core/model/transfers/Template;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$Card2Card;->this$0:Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
