.class public final Lru/rocketbank/r2d2/charges/ChargesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ChargesListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;,
        Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;

.field private static final REQUEST_CODE:I


# instance fields
.field private charges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->Companion:Lru/rocketbank/r2d2/charges/ChargesAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "charges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->charges:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .line 316
    sget v0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->REQUEST_CODE:I

    return v0
.end method


# virtual methods
.method public final getCharges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->charges:Ljava/util/List;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 343
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->charges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 316
    check-cast p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/charges/ChargesAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->charges:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/charge/ChargeModel;

    .line 324
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->getDescription$App_prodRelease()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getPurpose()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->getDate$App_prodRelease()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getRequisites()Lru/rocketbank/core/model/charge/ChargeModel$Requisites;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lru/rocketbank/core/model/charge/ChargeModel$Requisites;->getBill_date()Ljava/lang/String;

    move-result-object v2

    :cond_1
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->getTitle$App_prodRelease()Landroid/widget/TextView;

    move-result-object v7

    sget-object v0, Lru/rocketbank/r2d2/charges/ChargesListActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;

    iget-object v1, p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "holder.itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;->createChargeSumText$default(Lru/rocketbank/r2d2/charges/ChargesListActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/charge/ChargeModel;ILjava/lang/Integer;ILjava/lang/Object;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p2}, Lru/rocketbank/core/model/charge/ChargeModel;->getDocument_type()Lru/rocketbank/core/model/charge/DocumentType;

    move-result-object v0

    sget-object v1, Lru/rocketbank/core/model/charge/DocumentType;->inn:Lru/rocketbank/core/model/charge/DocumentType;

    if-ne v0, v1, :cond_2

    .line 330
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->getDescription$App_prodRelease()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    iget-object v1, p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "holder.itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lru/rocketbank/r2d2/charges/tax/TaxChargeInfoActivity;

    invoke-virtual {v0, v1, v2, p2}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;Lru/rocketbank/core/model/charge/ChargeModel;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->getDescription$App_prodRelease()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    iget-object v1, p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "holder.itemView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lru/rocketbank/r2d2/charges/penalty/PenaltyChargeInfoActivity;

    invoke-virtual {v0, v1, v2, p2}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->createIntent(Landroid/content/Context;Ljava/lang/Class;Lru/rocketbank/core/model/charge/ChargeModel;)Landroid/content/Intent;

    move-result-object p2

    .line 337
    :goto_1
    iget-object v0, p1, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;

    invoke-direct {v1, p1, p2}, Lru/rocketbank/r2d2/charges/ChargesAdapter$onBindViewHolder$1;-><init>(Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;Landroid/content/Intent;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/charges/ChargesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance p2, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026list_item, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/charges/ChargesAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setCharges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesAdapter;->charges:Ljava/util/List;

    return-void
.end method
