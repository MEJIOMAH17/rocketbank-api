.class final Lru/rocketbank/core/BaseRocketApplication$2;
.super Ljava/lang/Object;
.source "BaseRocketApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/BaseRocketApplication;->needLockApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/BaseRocketApplication;


# direct methods
.method constructor <init>(Lru/rocketbank/core/BaseRocketApplication;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lru/rocketbank/core/BaseRocketApplication$2;->this$0:Lru/rocketbank/core/BaseRocketApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 106
    iget-object v0, p0, Lru/rocketbank/core/BaseRocketApplication$2;->this$0:Lru/rocketbank/core/BaseRocketApplication;

    invoke-virtual {v0}, Lru/rocketbank/core/BaseRocketApplication;->lockApplication()V

    return-void
.end method
