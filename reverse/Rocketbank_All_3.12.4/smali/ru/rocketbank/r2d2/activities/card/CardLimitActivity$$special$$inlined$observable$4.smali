.class public final Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;
.super Lkotlin/properties/ReadWriteProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/card/CardLimitActivity;-><init>()V
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
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 CardLimitActivity.kt\nru/rocketbank/r2d2/activities/card/CardLimitActivity\n*L\n1#1,63:1\n214#2,8:64\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

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
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/card/CardLimitActivity$$special$$inlined$observable$4;->this$0:Lru/rocketbank/r2d2/activities/card/CardLimitActivity;

    .line 65
    invoke-static {p2}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->access$getActivityCardLimit$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    move-result-object p3

    iget-object p3, p3, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;->internet:Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object p3, p3, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;->switchCompat:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-static {p2}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->access$getData$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Lru/rocketbank/r2d2/activities/card/CardLimits;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/card/CardLimits;->getInternet()Lru/rocketbank/r2d2/activities/card/CardLimitData;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/card/CardLimitData;->getEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    const-string v0, "switchCompat"

    .line 68
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 69
    invoke-static {p2}, Lru/rocketbank/r2d2/activities/card/CardLimitActivity;->access$getInternetListener$p(Lru/rocketbank/r2d2/activities/card/CardLimitActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
