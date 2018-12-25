.class public final Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemplateAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private templatesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->templatesList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->templatesList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 252
    check-cast p1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->templatesList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/transfers/Template;

    .line 278
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    iget-object v2, v0, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    const-string v3, "template.provider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->getProvider_id()I

    move-result v2

    invoke-static {v1, v2}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getProvider(Lru/rocketbank/r2d2/payment/PaymentFragment;I)Lru/rocketbank/core/model/provider/Provider;

    move-result-object v1

    .line 279
    invoke-virtual {p1, v0, v1, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->bindTemplate(Lru/rocketbank/core/model/transfers/Template;Lru/rocketbank/core/model/provider/Provider;I)V

    .line 280
    iget-object p1, p1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$1;->INSTANCE:Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$1;

    check-cast v0, Lrx/functions/Func1;

    .line 281
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter$onBindViewHolder$2;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;)V

    check-cast v1, Lrx/functions/Func1;

    .line 280
    invoke-static {p2, p1, v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 252
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0c0146

    .line 271
    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    .line 272
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->actions:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const-string v1, "view.actions"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    new-instance p2, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-direct {p2, v0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public final remove(Lru/rocketbank/core/model/transfers/Template;)V
    .locals 1

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->templatesList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setTemplatesList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/transfers/Template;",
            ">;)V"
        }
    .end annotation

    const-string v0, "templatesList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->templatesList:Ljava/util/List;

    .line 266
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateAdapter;->notifyDataSetChanged()V

    return-void
.end method
