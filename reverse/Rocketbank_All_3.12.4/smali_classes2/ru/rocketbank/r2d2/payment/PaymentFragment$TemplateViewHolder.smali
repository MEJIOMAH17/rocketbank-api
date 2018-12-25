.class public final Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PaymentFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/payment/PaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TemplateViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFragment.kt\nru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder\n*L\n1#1,353:1\n*E\n"
.end annotation


# instance fields
.field private actions:Landroid/widget/ImageView;

.field private provider:Lru/rocketbank/core/model/provider/Provider;

.field private template:Lru/rocketbank/core/model/transfers/Template;

.field private templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

.field private templateIcon:Landroid/widget/ImageView;

.field private templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/payment/PaymentFragment;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901d3

    .line 226
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    const p1, 0x7f0903a9

    .line 227
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09039a

    .line 228
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    const p1, 0x7f09002a

    .line 229
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->actions:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final bindTemplate(Lru/rocketbank/core/model/transfers/Template;Lru/rocketbank/core/model/provider/Provider;I)V
    .locals 2

    const-string v0, "template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->template:Lru/rocketbank/core/model/transfers/Template;

    .line 197
    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->provider:Lru/rocketbank/core/model/provider/Provider;

    .line 199
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v1, p1, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->actions:Landroid/widget/ImageView;

    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder$bindTemplate$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;Lru/rocketbank/core/model/transfers/Template;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 207
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getCropCircleTransformation$p(Lru/rocketbank/r2d2/payment/PaymentFragment;)Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-static {p2, v1, v0}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 210
    :cond_2
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->itemView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p1, p1, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->toStringFields()Ljava/lang/String;

    move-result-object p1

    const-string p2, "description"

    .line 213
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    if-nez p2, :cond_4

    .line 214
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 216
    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_5

    .line 219
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTRANSITION_NAME_AVATAR$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTRANSITION_NAME_NAME$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentFragment;->access$getTRANSITION_NAME_ROOT$cp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final getActions()Landroid/widget/ImageView;
    .locals 1

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->actions:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTemplateDescriptionView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 189
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final getTemplateIcon()Landroid/widget/ImageView;
    .locals 1

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTemplateNameView()Lru/rocketbank/core/widgets/RocketTextView;
    .locals 1

    .line 188
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "v"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v1, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v1, :cond_0

    return-void

    .line 236
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 237
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v1, "a"

    .line 238
    iget-object v2, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "n"

    .line 239
    iget-object v2, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2}, Lru/rocketbank/core/widgets/RocketTextView;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/support/v4/util/Pair;

    const/4 v3, 0x0

    .line 242
    iget-object v4, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1086
    new-instance v7, Landroid/support/v4/util/Pair;

    invoke-direct {v7, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v3

    const/4 v3, 0x1

    .line 243
    iget-object v4, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    iget-object v5, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5}, Lru/rocketbank/core/widgets/RocketTextView;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 2086
    new-instance v7, Landroid/support/v4/util/Pair;

    invoke-direct {v7, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v3

    const/4 v3, 0x2

    .line 244
    iget-object v4, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->itemView:Landroid/view/View;

    const-string v7, "itemView"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 3086
    new-instance v7, Landroid/support/v4/util/Pair;

    invoke-direct {v7, v4, v5}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v2, v3

    .line 241
    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v1

    .line 245
    sget-object v3, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    iget-object v2, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v2}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v7, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->template:Lru/rocketbank/core/model/transfers/Template;

    invoke-virtual {v1}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->start(Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;)V

    return-void

    .line 248
    :cond_4
    sget-object v9, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;

    iget-object v1, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->this$0:Lru/rocketbank/r2d2/payment/PaymentFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/payment/PaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    check-cast v10, Landroid/content/Context;

    iget-object v11, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v11, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const/4 v12, 0x0

    iget-object v13, v0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->template:Lru/rocketbank/core/model/transfers/Template;

    const/4 v14, 0x0

    const/16 v15, 0x14

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;->start$default(Lru/rocketbank/r2d2/payment/PaymentDetailsActivity$Companion;Landroid/content/Context;Lru/rocketbank/core/model/provider/Provider;Landroid/os/Bundle;Lru/rocketbank/core/model/transfers/Template;Landroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method public final setActions(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->actions:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTemplateDescriptionView(Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateDescriptionView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public final setTemplateIcon(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setTemplateNameView(Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentFragment$TemplateViewHolder;->templateNameView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method
