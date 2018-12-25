.class final Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "ProvidersAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/ProvidersAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

.field final synthetic $provider:Lru/rocketbank/core/model/provider/Provider;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/ProvidersAdapter;Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;Lru/rocketbank/core/model/provider/Provider;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->$holder:Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

    iput-object p3, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->$provider:Lru/rocketbank/core/model/provider/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->this$0:Lru/rocketbank/r2d2/payment/ProvidersAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/payment/ProvidersAdapter;->access$getOnItemClickListener$p(Lru/rocketbank/r2d2/payment/ProvidersAdapter;)Lrx/functions/Action2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->$holder:Lru/rocketbank/r2d2/payment/ProvidersAdapter$ViewHolder;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/ProvidersAdapter$onBindViewHolder$1;->$provider:Lru/rocketbank/core/model/provider/Provider;

    invoke-interface {p1, v0, v1}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    return-void
.end method
