.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;
.super Lkotlin/properties/ReadWriteProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;-><init>(Landroid/view/View;)V
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
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 GenericSwitchViewHolder.kt\nru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder\n*L\n1#1,63:1\n39#2,6:64\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

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

    .line 64
    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    .line 65
    invoke-static {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->access$getSwitchCompat$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-static {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->access$getSwitchCompat$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 67
    invoke-static {p2}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->access$getSwitchCompat$p(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
