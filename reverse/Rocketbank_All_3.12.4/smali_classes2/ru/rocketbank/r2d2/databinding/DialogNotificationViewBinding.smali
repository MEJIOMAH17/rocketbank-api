.class public Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
.super Landroid/databinding/ViewDataBinding;
.source "DialogNotificationViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;
    }
.end annotation


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mData:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

.field private mDirtyFlags:J

.field private mListener:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

.field private mListenerRadioButtonPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/RadioGroup;

.field public final pushRadioButton:Landroid/widget/RadioButton;

.field public final smsRadioButton:Landroid/widget/RadioButton;

.field public final tvInfo:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 232
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 41
    sget-object v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    .line 42
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 43
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 44
    aget-object v1, p1, v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mboundView1:Landroid/widget/RadioGroup;

    .line 45
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mboundView1:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 46
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->pushRadioButton:Landroid/widget/RadioButton;

    .line 47
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->pushRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 48
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->smsRadioButton:Landroid/widget/RadioButton;

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->smsRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 50
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->tvInfo:Lru/rocketbank/core/widgets/RocketTextView;

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->tvInfo:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {p1, v2}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 1

    .line 252
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 2

    const-string v0, "layout/dialog_notification_view_0"

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
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

    .line 259
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 1

    .line 244
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 3

    const v0, 0x7f0c00a3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 1

    .line 236
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;
    .locals 1

    const v0, 0x7f0c00a3

    .line 240
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    return-object p0
.end method

.method private onChangeDataCheckedItem(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 138
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

.method private onChangeDataTextInfo(Landroid/databinding/ObservableField;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 129
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
    .locals 21

    move-object/from16 v1, p0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 149
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListener:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

    .line 154
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    const-wide/16 v8, 0x14

    and-long v10, v2, v8

    cmp-long v8, v10, v4

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    .line 165
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListenerRadioButtonPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

    if-nez v8, :cond_0

    new-instance v8, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

    invoke-direct {v8}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;-><init>()V

    iput-object v8, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListenerRadioButtonPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

    goto :goto_0

    :cond_0
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListenerRadioButtonPressedAndroidViewViewOnClickListener:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

    :goto_0
    invoke-virtual {v8, v6}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;->setValue(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding$OnClickListenerImpl;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v12, 0x1b

    and-long v14, v2, v12

    cmp-long v8, v14, v4

    const-wide/16 v12, 0x1a

    const-wide/16 v14, 0x19

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    and-long v17, v2, v14

    cmp-long v8, v17, v4

    if-eqz v8, :cond_3

    if-eqz v7, :cond_2

    .line 175
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getTextInfo()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 177
    :goto_2
    invoke-virtual {v1, v9, v8}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_3

    .line 182
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    and-long v17, v2, v12

    cmp-long v19, v17, v4

    if-eqz v19, :cond_6

    if-eqz v7, :cond_4

    .line 189
    invoke-virtual {v7}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getCheckedItem()Landroid/databinding/ObservableInt;

    move-result-object v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    const/4 v9, 0x1

    .line 191
    invoke-virtual {v1, v9, v7}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v7, :cond_6

    .line 196
    invoke-virtual {v7}, Landroid/databinding/ObservableInt;->get()I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :cond_6
    const/4 v9, 0x0

    :goto_5
    and-long v16, v2, v12

    cmp-long v7, v16, v4

    if-eqz v7, :cond_7

    .line 204
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mboundView1:Landroid/widget/RadioGroup;

    invoke-static {v7, v9}, Landroid/databinding/adapters/RadioGroupBindingAdapter;->setCheckedButton(Landroid/widget/RadioGroup;I)V

    :cond_7
    cmp-long v7, v10, v4

    if-eqz v7, :cond_8

    .line 209
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->pushRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->smsRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    and-long v6, v2, v14

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    .line 215
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->tvInfo:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;
    .locals 1

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListener:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 60
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->requestRebind()V

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

    .line 121
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->onChangeDataCheckedItem(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 119
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->onChangeDataTextInfo(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;)V
    .locals 6

    .line 103
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mData:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 107
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->notifyPropertyChanged(I)V

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

.method public setListener(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;)V
    .locals 6

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mListener:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 95
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->notifyPropertyChanged(I)V

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
    .locals 1

    const/16 v0, 0x37

    if-ne v0, p1, :cond_0

    .line 79
    check-cast p2, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setListener(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setData(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
