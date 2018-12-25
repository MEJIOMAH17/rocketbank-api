.class Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;
.super Ljava/lang/Object;
.source "CompletableHelper.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;

.field final synthetic val$call:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;Lretrofit2/Call;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;->this$0:Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe;

    iput-object p2, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;->val$call:Lretrofit2/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/core/network/rx/CompletableHelper$CompletableCallOnSubscribe$1;->val$call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method
