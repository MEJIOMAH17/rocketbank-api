.class public Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutCardWithActionsBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

.field public final cardRoot:Landroid/widget/LinearLayout;

.field public final creditCard:Lru/rocketbank/core/widgets/CreditCardView;

.field private mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field private mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

.field private mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

.field private mDirtyFlags:J

.field private final mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

.field public final rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090112

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x3

    .line 41
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 263
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 42
    sget-object v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    .line 43
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 45
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardRoot:Landroid/widget/LinearLayout;

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 47
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/CreditCardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    const/4 v0, 0x2

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 50
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    .line 283
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 2

    const-string v0, "layout/layout_card_with_actions_0"

    .line 287
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view tag isn\'t correct on view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    .line 275
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 3

    const v0, 0x7f0c011b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    .line 267
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;
    .locals 1

    const v0, 0x7f0c011b

    .line 271
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    return-object p0
.end method

.method private onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 149
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 131
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 140
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 23

    move-object/from16 v1, p0

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 160
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 167
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    const-wide/16 v8, 0x28

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 178
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

    if-nez v8, :cond_0

    new-instance v8, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

    invoke-direct {v8}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActionsOnPressedPhotoAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v12, 0x37

    and-long v14, v2, v12

    cmp-long v8, v14, v4

    const-wide/16 v12, 0x34

    const-wide/16 v14, 0x32

    const-wide/16 v16, 0x31

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    and-long v19, v2, v16

    cmp-long v8, v19, v4

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    .line 188
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getOrVisible()Landroid/databinding/ObservableInt;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 190
    :goto_2
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 195
    invoke-virtual {v8}, Landroid/databinding/ObservableInt;->get()I

    move-result v8

    goto :goto_3

    :cond_3
    move v8, v9

    :goto_3
    and-long v19, v2, v14

    cmp-long v21, v19, v4

    if-eqz v21, :cond_5

    if-eqz v7, :cond_4

    .line 202
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getPhotoVisible()Landroid/databinding/ObservableInt;

    move-result-object v19

    move-object/from16 v9, v19

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v14, 0x1

    .line 204
    invoke-virtual {v1, v14, v9}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_5

    .line 209
    invoke-virtual {v9}, Landroid/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    and-long v14, v2, v12

    cmp-long v19, v14, v4

    if-eqz v19, :cond_7

    if-eqz v7, :cond_6

    .line 216
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;->getNfcVisible()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    const/4 v14, 0x2

    .line 218
    invoke-virtual {v1, v14, v7}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_7

    .line 223
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    const-wide/16 v14, 0x32

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    and-long v18, v2, v14

    cmp-long v14, v18, v4

    if-eqz v14, :cond_9

    .line 231
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v14, v9}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_9
    cmp-long v9, v10, v4

    if-eqz v9, :cond_a

    .line 236
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v9, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    and-long v9, v2, v16

    cmp-long v6, v9, v4

    if-eqz v6, :cond_b

    .line 241
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mboundView2:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v6, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_b
    and-long v8, v2, v12

    cmp-long v2, v8, v4

    if-eqz v2, :cond_c

    .line 246
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getAbility()Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    return-object v0
.end method

.method public getActions()Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 60
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 123
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->onChangeAbilityNfcVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 121
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->onChangeAbilityPhotoVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->onChangeAbilityOrVisible(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V
    .locals 6

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
    .locals 6

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 79
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;->setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
