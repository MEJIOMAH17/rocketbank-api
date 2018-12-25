.class public final Lru/rocketbank/core/R$layout;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# instance fields
.field private final headerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lru/rocketbank/core/dagger/RetrofitModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/RetrofitModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/dagger/RetrofitModule;",
            "Ljavax/inject/Provider<",
            "Lru/rocketbank/core/manager/HeaderManager;",
            ">;)V"
        }
    .end annotation

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p1, p0, Lru/rocketbank/core/R$layout;->module:Lru/rocketbank/core/dagger/RetrofitModule;

    .line 1018
    iput-object p2, p0, Lru/rocketbank/core/R$layout;->headerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2023
    iget-object v0, p0, Lru/rocketbank/core/R$layout;->headerManagerProvider:Ljavax/inject/Provider;

    .line 2024
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/manager/HeaderManager;

    const-string v1, "headerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    new-instance v1, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;

    invoke-direct {v1, v0}, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;-><init>(Lru/rocketbank/core/manager/HeaderManager;)V

    .line 2044
    invoke-virtual {v1}, Lru/rocketbank/core/network/adapter/OkClientRestAdapter;->create()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-string v1, "okClientRestAdapter.create().build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_0
    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method
