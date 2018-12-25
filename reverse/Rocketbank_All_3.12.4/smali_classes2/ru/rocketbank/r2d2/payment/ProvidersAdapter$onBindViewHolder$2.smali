.class final Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "ProvidersAdapter.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/ProvidersAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/ProvidersAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;->this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;->call(Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Integer;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$2;->this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->access$isFirstInSection(Lru/rocketbank/r2d2/payment/ProvidersAdapter;I)Z

    move-result p1

    return p1
.end method
