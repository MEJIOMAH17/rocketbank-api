.class public Lru/rocketbank/core/model/transfers/Template$InternalTransfer;
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
    name = "InternalTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/model/transfers/Template$InternalTransfer$Friend;
    }
.end annotation


# instance fields
.field public friend:Lru/rocketbank/core/model/transfers/Template$InternalTransfer$Friend;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend"
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/core/model/transfers/Template;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lru/rocketbank/core/model/transfers/Template$InternalTransfer;->this$0:Lru/rocketbank/core/model/transfers/Template;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
