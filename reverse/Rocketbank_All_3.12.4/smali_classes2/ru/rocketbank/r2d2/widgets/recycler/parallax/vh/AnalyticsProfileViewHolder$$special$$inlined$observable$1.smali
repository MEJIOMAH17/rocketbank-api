.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;
.super Lkotlin/properties/ReadWriteProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ReadWriteProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 AnalyticsProfileViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder\n*L\n1#1,63:1\n25#2,6:64\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic $itemView$inlined:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    iput-object p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->$itemView$inlined:Landroid/view/View;

    .line 27
    invoke-direct {p0, p2}, Lkotlin/properties/ReadWriteProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->$itemView$inlined:Landroid/view/View;

    sget p3, Lru/rocketbank/r2d2/R$id;->switcher:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->$itemView$inlined:Landroid/view/View;

    sget p3, Lru/rocketbank/r2d2/R$id;->switcher:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    const-string p3, "itemView.switcher"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 67
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->$itemView$inlined:Landroid/view/View;

    sget p2, Lru/rocketbank/r2d2/R$id;->switcher:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsProfileViewHolder;

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
