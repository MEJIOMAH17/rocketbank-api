.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;
.super Ljava/lang/Object;
.source "AnalyticsPeriodChooseDialog.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->fillYearWheel(Lru/rocketbank/core/widgets/WheelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsPeriodChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsPeriodChooseDialog.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1246#2:134\n1315#2,3:135\n*E\n*S KotlinDebug\n*F\n+ 1 AnalyticsPeriodChooseDialog.kt\nru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1\n*L\n106#1:134\n106#1,3:135\n*E\n"
.end annotation


# instance fields
.field final synthetic $wheelView:Lru/rocketbank/core/widgets/WheelView;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;Lru/rocketbank/core/widgets/WheelView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->$wheelView:Lru/rocketbank/core/widgets/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V

    return-void
.end method

.method public final call(Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;)V
    .locals 10

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$onCancelClick(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)V

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getPeriodBegin()Ljava/util/Calendar;

    move-result-object v1

    .line 97
    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 98
    :goto_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsMonthsManager;->getPeriodEnd()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-gtz v3, :cond_2

    .line 99
    invoke-static {v1}, Lru/rocketbank/r2d2/utils/CalendarUtils;->copy(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-static {v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$getYear$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;

    invoke-static {v7}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;->access$getMonth$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog;)I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object v2, v3

    .line 104
    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->$wheelView:Lru/rocketbank/core/widgets/WheelView;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault$251b5948(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 135
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 136
    check-cast v6, Ljava/util/Calendar;

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lru/rocketbank/core/utils/MonthNames;->INSTANCE:Lru/rocketbank/core/utils/MonthNames;

    invoke-virtual {v8}, Lru/rocketbank/core/utils/MonthNames;->getNAMES()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 106
    invoke-virtual {p1, v3}, Lru/rocketbank/core/widgets/WheelView;->setItems(Ljava/util/List;)V

    .line 107
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->$wheelView:Lru/rocketbank/core/widgets/WheelView;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/WheelView;->setSeletion(I)V

    .line 108
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;->$wheelView:Lru/rocketbank/core/widgets/WheelView;

    new-instance v1, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;

    invoke-direct {v1, p0, v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1$2;-><init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsPeriodChooseDialog$fillYearWheel$1;Ljava/util/List;)V

    check-cast v1, Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/WheelView;->setOnWheelViewListener(Lru/rocketbank/core/widgets/WheelView$OnWheelViewListener;)V

    return-void
.end method
