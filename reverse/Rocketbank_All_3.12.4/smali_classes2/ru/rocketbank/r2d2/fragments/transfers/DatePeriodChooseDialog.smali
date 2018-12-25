.class public final Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePeriodChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDatePeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,306:1\n1246#2:307\n1315#2,3:308\n1246#2:311\n1315#2,3:312\n*E\n*S KotlinDebug\n*F\n+ 1 DatePeriodChooseDialog.kt\nru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog\n*L\n184#1:307\n184#1,3:308\n44#1:311\n44#1,3:312\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

.field private static final DATE_PERIOD:Ljava/lang/String; = "DATE_PERIOD"

.field private static final IS_MONTH_ONLY:Ljava/lang/String; = "IS_MONTH_ONLY"

.field private static years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

.field private tabHalf:Landroid/support/design/widget/TabLayout$Tab;

.field private tabMonth:Landroid/support/design/widget/TabLayout$Tab;

.field private tabQuarter:Landroid/support/design/widget/TabLayout$Tab;

.field private tabYear:Landroid/support/design/widget/TabLayout$Tab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, 0x1e

    .line 44
    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v2, Ljava/lang/Iterable;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 312
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->years:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;-><init>()V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setYear(I)V

    const/4 v2, 0x2

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setMonth(Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getMonth()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setQuarter(Ljava/lang/Integer;)V

    .line 60
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getMonth()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setHalf(Ljava/lang/Integer;)V

    .line 55
    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    return-void
.end method

.method public static final synthetic access$getDATE_PERIOD$cp()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->DATE_PERIOD:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDatePeriod$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    return-object p0
.end method

.method public static final synthetic access$getTabHalf$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabHalf:Landroid/support/design/widget/TabLayout$Tab;

    if-nez p0, :cond_0

    const-string v0, "tabHalf"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTabMonth$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabMonth:Landroid/support/design/widget/TabLayout$Tab;

    if-nez p0, :cond_0

    const-string v0, "tabMonth"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTabQuarter$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabQuarter:Landroid/support/design/widget/TabLayout$Tab;

    if-nez p0, :cond_0

    const-string v0, "tabQuarter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getTabYear$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabYear:Landroid/support/design/widget/TabLayout$Tab;

    if-nez p0, :cond_0

    const-string v0, "tabYear"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getYears$cp()Ljava/util/List;
    .locals 1

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->years:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$onCancelClick(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onCancelClick()V

    return-void
.end method

.method public static final synthetic access$onOkClick(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->onOkClick()V

    return-void
.end method

.method public static final synthetic access$setDatePeriod$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    return-void
.end method

.method public static final synthetic access$setTabHalf$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabHalf:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public static final synthetic access$setTabMonth$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabMonth:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public static final synthetic access$setTabQuarter$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabQuarter:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public static final synthetic access$setTabYear$p(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabYear:Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public static final synthetic access$setYears$cp(Ljava/util/List;)V
    .locals 0

    .line 27
    sput-object p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->years:Ljava/util/List;

    return-void
.end method

.method private final fillMonthWheel(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 5

    .line 183
    new-instance v0, Lkotlin/ranges/IntRange;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v0, Ljava/lang/Iterable;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 308
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    .line 184
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 185
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/WheelView;->setItems(Ljava/util/List;)V

    .line 187
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillMonthWheel$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillMonthWheel$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v0, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    return-void
.end method

.method private final fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 1

    .line 178
    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->years:Ljava/util/List;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/WheelView;->setItems(Ljava/util/List;)V

    .line 179
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillYearWheel$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$fillYearWheel$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v0, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    return-void
.end method

.method private final getDatePeriod()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;
    .locals 6

    .line 163
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;-><init>()V

    .line 164
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v4, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 166
    :goto_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    sget v5, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v4, Lru/rocketbank/core/widgets/ViewPagerAdapter;

    invoke-virtual {v4}, Lru/rocketbank/core/widgets/ViewPagerAdapter;->getViews()[Landroid/view/View;

    move-result-object v4

    aget-object v1, v4, v1

    .line 167
    sget v4, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/widgets/WheelView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lru/rocketbank/core/widgets/WheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    :goto_3
    invoke-virtual {v0, v4}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setYear(I)V

    .line 168
    sget v4, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/widgets/WheelView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lru/rocketbank/core/widgets/WheelView;->getSeletedIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    if-eqz v2, :cond_6

    .line 169
    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    :cond_6
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1102fb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setMonth(Ljava/lang/Integer;)V

    goto :goto_5

    .line 171
    :cond_7
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f11039f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setQuarter(Ljava/lang/Integer;)V

    goto :goto_5

    .line 172
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f11021f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->setHalf(Ljava/lang/Integer;)V

    :cond_9
    :goto_5
    return-object v0
.end method

.method public static final newInstance(Z)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->Companion:Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$Companion;->newInstance(Z)Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;

    move-result-object p0

    return-object p0
.end method

.method private final onCancelClick()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->dismiss()V

    return-void
.end method

.method private final onOkClick()V
    .locals 2

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->callback:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    const-string v1, "callback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getDatePeriod()Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onChooseDate(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const v0, 0x7f0c00a2

    .line 66
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "view"

    .line 67
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lru/rocketbank/r2d2/R$id;->tabLayout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 69
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f1102fb

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const-string v2, "tabLayout.newTab().setText(R.string.month_tab)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabMonth:Landroid/support/design/widget/TabLayout$Tab;

    .line 70
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f11021f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const-string v2, "tabLayout.newTab().setText(R.string.half_year_tab)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabHalf:Landroid/support/design/widget/TabLayout$Tab;

    .line 71
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f11039f

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const-string v2, "tabLayout.newTab().setText(R.string.quarter_tab)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabQuarter:Landroid/support/design/widget/TabLayout$Tab;

    .line 72
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const v2, 0x7f1104e8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    const-string v2, "tabLayout.newTab().setText(R.string.year_tab)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabYear:Landroid/support/design/widget/TabLayout$Tab;

    .line 73
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabMonth:Landroid/support/design/widget/TabLayout$Tab;

    if-nez v1, :cond_0

    const-string v2, "tabMonth"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 74
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabHalf:Landroid/support/design/widget/TabLayout$Tab;

    if-nez v1, :cond_1

    const-string v2, "tabHalf"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 75
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabQuarter:Landroid/support/design/widget/TabLayout$Tab;

    if-nez v1, :cond_2

    const-string v2, "tabQuarter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 76
    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->tabYear:Landroid/support/design/widget/TabLayout$Tab;

    if-nez v1, :cond_3

    const-string v2, "tabYear"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    const-string v1, "tabLayout"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    .line 78
    sget v1, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    new-instance v2, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v2, v0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    sget v1, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    const v2, 0x7f0c01c1

    invoke-virtual {p1, v2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "monthView"

    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/WheelView;

    const-string v4, "monthView.leftWheel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillMonthWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 82
    sget v3, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/WheelView;

    const-string v4, "monthView.rightWheel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 84
    sget v3, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v2, v3, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v4, "halfView"

    .line 85
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/widgets/WheelView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "resources.getStringArray(R.array.half_years)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$receiver"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7024
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "ArraysUtilJVM.asList(this)"

    .line 6324
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/WheelView;->setItems(Ljava/util/List;)V

    .line 86
    sget v4, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/widgets/WheelView;

    const-string v5, "halfView.leftWheel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$1;

    invoke-direct {v5, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v5, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    .line 87
    sget v4, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lru/rocketbank/core/widgets/WheelView;

    const-string v5, "halfView.rightWheel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 89
    sget v4, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v2, v4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string v5, "quarterView"

    .line 90
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/WheelView;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f03000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "resources.getStringArray(R.array.quarters)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "$receiver"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8024
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v7, "ArraysUtilJVM.asList(this)"

    .line 7324
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5, v6}, Lru/rocketbank/core/widgets/WheelView;->setItems(Ljava/util/List;)V

    .line 91
    sget v5, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/WheelView;

    const-string v6, "quarterView.leftWheel"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$2;

    invoke-direct {v6, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$2;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v6, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {v5, v6}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    .line 92
    sget v5, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/rocketbank/core/widgets/WheelView;

    const-string v6, "quarterView.rightWheel"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 94
    sget v5, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v2, v5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v2, "yearView"

    .line 95
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/WheelView;

    const-string v5, "yearView.leftWheel"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lru/rocketbank/core/widgets/WheelView;->setVisibility(I)V

    .line 96
    sget v2, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/WheelView;

    const-string v6, "yearView.leftWheel"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3;

    invoke-direct {v6, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$3;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v6, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    .line 97
    sget v2, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/WheelView;

    const-string v6, "yearView.rightWheel"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V

    .line 99
    sget v2, Lru/rocketbank/r2d2/R$id;->buttonOk:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v6, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$4;

    invoke-direct {v6, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$4;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    sget v2, Lru/rocketbank/r2d2/R$id;->buttonCancel:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lru/rocketbank/core/widgets/RocketButton;

    new-instance v6, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$5;

    invoke-direct {v6, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$5;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    const-string v7, "IS_MONTH_ONLY"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v6, :cond_4

    .line 103
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    const-string v2, "$receiver"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9014
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 104
    new-array p1, v6, [Landroid/view/View;

    aput-object v1, p1, p3

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    .line 105
    new-array v2, v2, [Landroid/view/View;

    aput-object v1, v2, p3

    aput-object v3, v2, v6

    const/4 p3, 0x2

    aput-object v4, v2, p3

    const/4 p3, 0x3

    aput-object p1, v2, p3

    move-object p1, v2

    .line 107
    :goto_0
    sget p3, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/support/v4/view/ViewPager;

    const-string v1, "view.pager"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lru/rocketbank/core/widgets/ViewPagerAdapter;

    invoke-direct {v1, p1}, Lru/rocketbank/core/widgets/ViewPagerAdapter;-><init>([Landroid/view/View;)V

    check-cast v1, Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p3, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 108
    new-instance p1, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$6;

    invoke-direct {p1, p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onCreateView$6;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;)V

    check-cast p1, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    return-object p2
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->DATE_PERIOD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    if-eqz p2, :cond_1

    .line 128
    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    .line 130
    :cond_1
    new-instance v0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;

    invoke-direct {v0, p0, p2, p1}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;Landroid/view/View;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v3, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.ViewPagerAdapter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v0, Lru/rocketbank/core/widgets/ViewPagerAdapter;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/ViewPagerAdapter;->getViews()[Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    sget v4, Lru/rocketbank/r2d2/R$id;->pager:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    aget-object v0, v0, v3

    .line 146
    sget v3, Lru/rocketbank/r2d2/R$id;->rightWheel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/WheelView;

    sget-object v4, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->years:Ljava/util/List;

    iget-object v5, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v5}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V

    if-eqz p1, :cond_5

    .line 147
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1102fb

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/WheelView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_6
    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V

    :cond_7
    return-void

    .line 149
    :cond_8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f11039f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget p1, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/WheelView;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getQuarter()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_9
    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V

    :cond_a
    return-void

    .line 150
    :cond_b
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f11021f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Lru/rocketbank/r2d2/R$id;->leftWheel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/WheelView;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/transfers/DatePeriodChooseDialog;->datePeriod:Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/transfers/BudgetDate$Period;->getHalf()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_c
    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V

    return-void

    :cond_d
    return-void
.end method
