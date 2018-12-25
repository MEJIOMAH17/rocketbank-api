.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;
.source "GenericSwitchViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGenericSwitchViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GenericSwitchViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,69:1\n27#2,3:70\n*E\n*S KotlinDebug\n*F\n+ 1 GenericSwitchViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder\n*L\n38#1,3:70\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final enabled$delegate:Lkotlin/properties/ReadWriteProperty;

.field private onChangeAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onLinkClickAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final refillView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

.field private final switchCompat:Landroid/support/v7/widget/SwitchCompat;

.field private final titleView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "enabled"

    const-string v4, "getEnabled()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090370

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.SwitchCompat"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    const v0, 0x7f090403

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0903cc

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    const v0, 0x7f0902d1

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->refillView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 35
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->refillView:Lru/rocketbank/core/widgets/RocketTextView;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    new-instance v0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;

    invoke-direct {v0, p1, p1, p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V

    check-cast v0, Lkotlin/properties/ReadWriteProperty;

    .line 72
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getSwitchCompat$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;
    .locals 0

    .line 12
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic onBindActions$default(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onBindActions(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onBindActions(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onChangeAction:Lkotlin/jvm/functions/Function3;

    .line 66
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onLinkClickAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onChangeAction:Lkotlin/jvm/functions/Function3;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2, p0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->onLinkClickAction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method

.method public final setClickable(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->enabled$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLink(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->refillView:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->refillView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->refillView:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void
.end method

.method public final setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->subtitleView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->titleView:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
