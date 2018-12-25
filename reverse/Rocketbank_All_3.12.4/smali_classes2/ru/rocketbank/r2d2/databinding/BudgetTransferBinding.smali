.class public Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
.super Landroid/databinding/ViewDataBinding;
.source "BudgetTransferBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final budgetView:Landroid/widget/LinearLayout;

.field public final buttonInfoKbk:Landroid/widget/ImageButton;

.field public final buttonInfoUin:Landroid/widget/ImageButton;

.field public final edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

.field public final from:Lru/rocketbank/core/widgets/RocketTextView;

.field public final inn:Lru/rocketbank/core/widgets/RocketEditText;

.field public final innFrom:Lru/rocketbank/core/widgets/RocketEditText;

.field public final innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

.field public final innFromText:Lru/rocketbank/core/widgets/RocketTextView;

.field public final innProgressBar:Landroid/widget/ProgressBar;

.field public final kbk:Lru/rocketbank/core/widgets/RocketEditText;

.field public final kpp:Lru/rocketbank/core/widgets/RocketEditText;

.field private mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

.field private mDirtyFlags:J

.field private mDirtyFlags_1:J

.field private final mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

.field private final mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

.field public final oktmo:Lru/rocketbank/core/widgets/RocketEditText;

.field public final recipientName:Lru/rocketbank/core/widgets/RocketEditText;

.field public final spinnerStatus:Landroid/widget/Spinner;

.field public final switcher:Landroid/support/v7/widget/SwitchCompat;

.field private switcherandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

.field public final taxBasis:Landroid/widget/Spinner;

.field public final taxFields:Landroid/widget/LinearLayout;

.field public final taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

.field private taxPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

.field public final taxSwitch:Landroid/support/v7/widget/CardView;

.field public final uin:Lru/rocketbank/core/widgets/RocketEditText;

.field public final value:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 17
    sput-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901f1

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090095

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090096

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090348

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090403

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09037d

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x1a

    .line 148
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 83
    new-instance v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$1;-><init>(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcherandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

    .line 109
    new-instance v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding$2;-><init>(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)V

    iput-object v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    const-wide/16 v1, -0x1

    .line 1687
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 1688
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags_1:J

    .line 149
    sget-object v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    invoke-static {p1, p2, v0, v1, v2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 150
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->budgetView:Landroid/widget/LinearLayout;

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->budgetView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x15

    .line 152
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->buttonInfoKbk:Landroid/widget/ImageButton;

    const/16 v0, 0x16

    .line 153
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->buttonInfoUin:Landroid/widget/ImageButton;

    const/16 v0, 0xb

    .line 154
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 156
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->from:Lru/rocketbank/core/widgets/RocketTextView;

    .line 157
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->from:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 158
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x9

    .line 160
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    .line 161
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x11

    .line 162
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x8

    .line 164
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromText:Lru/rocketbank/core/widgets/RocketTextView;

    .line 165
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x14

    .line 166
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    .line 167
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    .line 168
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 169
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    .line 170
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 171
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xe

    .line 173
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 175
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x12

    .line 177
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 179
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    .line 180
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 181
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    .line 182
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x17

    .line 183
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->spinnerStatus:Landroid/widget/Spinner;

    const/16 v0, 0xd

    .line 184
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    .line 185
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xf

    .line 186
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxBasis:Landroid/widget/Spinner;

    .line 187
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxBasis:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x19

    .line 188
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxFields:Landroid/widget/LinearLayout;

    const/16 v0, 0x13

    .line 189
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 191
    aget-object v0, p1, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxSwitch:Landroid/support/v7/widget/CardView;

    .line 192
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxSwitch:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 193
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    .line 194
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x18

    .line 195
    aget-object p1, p1, v0

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->value:Lru/rocketbank/core/widgets/RocketTextView;

    .line 196
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->setRootTag(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->invalidateAll()V

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;)Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;
    .locals 0

    .line 8
    iget-object p0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    return-object p0
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 1

    .line 1708
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 2

    const-string v0, "layout/budget_transfer_0"

    .line 1712
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
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

    .line 1715
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 1

    .line 1700
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 3

    const v0, 0x7f0c0079

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1704
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 1

    .line 1692
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;
    .locals 1

    const v0, 0x7f0c0079

    .line 1696
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    return-object p0
.end method

.method private onChangeBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 461
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_1

    .line 465
    monitor-enter p0

    .line 466
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 467
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x35

    if-ne p2, v0, :cond_2

    .line 471
    monitor-enter p0

    .line 472
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 473
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/16 v0, 0x46

    if-ne p2, v0, :cond_3

    .line 477
    monitor-enter p0

    .line 478
    :try_start_3
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 479
    monitor-exit p0

    return p1

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/16 v0, 0x33

    if-ne p2, v0, :cond_4

    .line 483
    monitor-enter p0

    .line 484
    :try_start_4
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 485
    monitor-exit p0

    return p1

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/16 v0, 0x3b

    if-ne p2, v0, :cond_5

    .line 489
    monitor-enter p0

    .line 490
    :try_start_5
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 491
    monitor-exit p0

    return p1

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/16 v0, 0x57

    if-ne p2, v0, :cond_6

    .line 495
    monitor-enter p0

    .line 496
    :try_start_6
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x2000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 497
    monitor-exit p0

    return p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/16 v0, 0x2f

    if-ne p2, v0, :cond_7

    .line 501
    monitor-enter p0

    .line 502
    :try_start_7
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x200000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 503
    monitor-exit p0

    return p1

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    const/16 v0, 0x20

    if-ne p2, v0, :cond_8

    .line 507
    monitor-enter p0

    .line 508
    :try_start_8
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 509
    monitor-exit p0

    return p1

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    const/16 v0, 0x43

    if-ne p2, v0, :cond_9

    .line 513
    monitor-enter p0

    .line 514
    :try_start_9
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x80000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 515
    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    const/16 v0, 0x4d

    if-ne p2, v0, :cond_a

    .line 519
    monitor-enter p0

    .line 520
    :try_start_a
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x100000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 521
    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    const/16 v0, 0x51

    if-ne p2, v0, :cond_b

    .line 525
    monitor-enter p0

    .line 526
    :try_start_b
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x400000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 527
    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    const/16 v0, 0x52

    if-ne p2, v0, :cond_c

    .line 531
    monitor-enter p0

    .line 532
    :try_start_c
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x1000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 533
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetFieldsFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 441
    monitor-enter p0

    .line 442
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 443
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

.method private onChangeBudgetFieldsInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 347
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

.method private onChangeBudgetFieldsInnFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 365
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

.method private onChangeBudgetFieldsKbk(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 452
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

.method private onChangeBudgetFieldsKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 356
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

.method private onChangeBudgetFieldsOktmo(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 336
    monitor-enter p0

    .line 337
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 338
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

.method private onChangeBudgetFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 681
    monitor-enter p0

    .line 682
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x800000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 683
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

.method private onChangeBudgetFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 374
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

.method private onChangeBudgetFieldsTaxInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 413
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

.method private onChangeBudgetFieldsTaxPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 606
    monitor-enter p0

    .line 607
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x40000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 608
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

.method private onChangeBudgetFieldsUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 308
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

.method private onChangeBudgetFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 593
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 597
    monitor-enter p0

    .line 598
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x2000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 599
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 317
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 321
    monitor-enter p0

    .line 322
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x4000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 323
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 327
    monitor-enter p0

    .line 328
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x8000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 329
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetInnFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x200000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 647
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 651
    monitor-enter p0

    .line 652
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x10000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 653
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetInnNecessary(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 404
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

.method private onChangeBudgetIsCustom(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x8000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 563
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

.method private onChangeBudgetKbk(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 542
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 546
    monitor-enter p0

    .line 547
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x200000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 548
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 552
    monitor-enter p0

    .line 553
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x400000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 554
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 572
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 576
    monitor-enter p0

    .line 577
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x800000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 578
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 582
    monitor-enter p0

    .line 583
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x1000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 584
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetOktmo(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 422
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x40000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 428
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 432
    monitor-enter p0

    .line 433
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x80000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 434
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 615
    monitor-enter p0

    .line 616
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x80000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 617
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 621
    monitor-enter p0

    .line 622
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x4000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 623
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x58

    if-ne p2, v0, :cond_2

    .line 627
    monitor-enter p0

    .line 628
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x8000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 629
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 383
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x10000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 389
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 393
    monitor-enter p0

    .line 394
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 395
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetShowTax(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x100000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 638
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

.method private onChangeBudgetTaxInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x400000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 662
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x58

    if-ne p2, v0, :cond_1

    .line 666
    monitor-enter p0

    .line 667
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x20000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 668
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/16 v0, 0x59

    if-ne p2, v0, :cond_2

    .line 672
    monitor-enter p0

    .line 673
    :try_start_2
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x40000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 674
    monitor-exit p0

    return p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetTaxPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 690
    monitor-enter p0

    .line 691
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x1000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 692
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 696
    monitor-enter p0

    .line 697
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x80000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 698
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeBudgetUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z
    .locals 6

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 705
    monitor-enter p0

    .line 706
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x2000000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 707
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/16 v0, 0x59

    if-ne p2, v0, :cond_1

    .line 711
    monitor-enter p0

    .line 712
    :try_start_1
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide v2, 0x100000000000L

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 713
    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 104

    move-object/from16 v1, p0

    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 725
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 726
    iget-wide v6, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags_1:J

    .line 727
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags_1:J

    .line 728
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    const-wide v9, 0x3fffffffffffL

    and-long v11, v2, v9

    cmp-long v9, v11, v4

    const-wide v15, 0x200000002004L

    const-wide v17, 0x200000002001L

    const-wide v19, 0x200004002002L

    const-wide v21, 0x200008002002L

    const/4 v10, 0x0

    if-eqz v9, :cond_8e

    const-wide v23, 0x20000c002002L

    and-long v25, v2, v23

    cmp-long v9, v25, v4

    const/4 v11, 0x1

    const v12, 0x7f080294

    const v13, 0x7f080296

    if-eqz v9, :cond_7

    if-eqz v8, :cond_0

    .line 824
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 826
    :goto_0
    invoke-virtual {v1, v11, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    and-long v23, v2, v21

    cmp-long v14, v23, v4

    if-eqz v14, :cond_1

    if-eqz v9, :cond_1

    .line 832
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    and-long v23, v2, v19

    cmp-long v25, v23, v4

    if-eqz v25, :cond_6

    if-eqz v9, :cond_2

    .line 839
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    cmp-long v25, v23, v4

    if-eqz v25, :cond_4

    if-eqz v9, :cond_3

    const-wide/high16 v23, 0x800000000000000L

    or-long v25, v2, v23

    :goto_3
    move-wide/from16 v2, v25

    goto :goto_4

    :cond_3
    const-wide/high16 v23, 0x400000000000000L

    or-long v25, v2, v23

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v9, :cond_5

    .line 852
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v13}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_5

    :cond_5
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v9, v12}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_5
    const-wide v23, 0x200000843a7dL

    and-long v25, v2, v23

    cmp-long v23, v25, v4

    const/4 v11, 0x2

    if-eqz v23, :cond_24

    if-eqz v8, :cond_8

    .line 859
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFields()Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v12, v23

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    and-long v23, v2, v17

    cmp-long v25, v23, v4

    if-eqz v25, :cond_a

    if-eqz v12, :cond_9

    const-string v13, "uin"

    .line 866
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    .line 868
    :goto_7
    invoke-virtual {v1, v10, v13}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_a

    .line 873
    invoke-virtual {v13}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v13

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    and-long v23, v2, v15

    cmp-long v25, v23, v4

    if-eqz v25, :cond_c

    if-eqz v12, :cond_b

    const-string v10, "oktmo"

    .line 880
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    .line 882
    :goto_9
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_c

    .line 887
    invoke-virtual {v10}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v10

    goto :goto_a

    :cond_c
    const/4 v10, 0x0

    :goto_a
    const-wide v23, 0x200000002008L

    and-long v25, v2, v23

    cmp-long v23, v25, v4

    if-eqz v23, :cond_e

    if-eqz v12, :cond_d

    const-string v11, "inn"

    .line 894
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_b

    :cond_d
    const/4 v11, 0x0

    :goto_b
    const/4 v15, 0x3

    .line 896
    invoke-virtual {v1, v15, v11}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_e

    .line 901
    invoke-virtual {v11}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v11

    goto :goto_c

    :cond_e
    const/4 v11, 0x0

    :goto_c
    const-wide v15, 0x200000002010L

    and-long v23, v2, v15

    cmp-long v15, v23, v4

    if-eqz v15, :cond_10

    if-eqz v12, :cond_f

    const-string v15, "kpp"

    .line 908
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_d

    :cond_f
    const/4 v15, 0x0

    :goto_d
    const/4 v4, 0x4

    .line 910
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_10

    .line 915
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_e

    :cond_10
    const/4 v4, 0x0

    :goto_e
    const-wide v15, 0x200000002020L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v5, v23, v15

    if-eqz v5, :cond_12

    if-eqz v12, :cond_11

    const-string v5, "inn_from"

    .line 922
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_f

    :cond_11
    const/4 v5, 0x0

    :goto_f
    const/4 v15, 0x5

    .line 924
    invoke-virtual {v1, v15, v5}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_12

    .line 929
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v5

    goto :goto_10

    :cond_12
    const/4 v5, 0x0

    :goto_10
    const-wide v15, 0x200000002040L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_14

    if-eqz v12, :cond_13

    const-string v15, "recipient_name"

    .line 936
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v33, v4

    goto :goto_11

    :cond_13
    move-object/from16 v33, v4

    const/4 v15, 0x0

    :goto_11
    const/4 v4, 0x6

    .line 938
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_15

    .line 943
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_12

    :cond_14
    move-object/from16 v33, v4

    :cond_15
    const/4 v4, 0x0

    :goto_12
    const-wide v15, 0x200000002200L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_17

    if-eqz v12, :cond_16

    const-string v15, "tax_inn"

    .line 950
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v34, v4

    goto :goto_13

    :cond_16
    move-object/from16 v34, v4

    const/4 v15, 0x0

    :goto_13
    const/16 v4, 0x9

    .line 952
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_18

    .line 957
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_14

    :cond_17
    move-object/from16 v34, v4

    :cond_18
    const/4 v4, 0x0

    :goto_14
    const-wide v15, 0x200000002800L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_1a

    if-eqz v12, :cond_19

    const-string v15, "from"

    .line 964
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v35, v4

    goto :goto_15

    :cond_19
    move-object/from16 v35, v4

    const/4 v15, 0x0

    :goto_15
    const/16 v4, 0xb

    .line 966
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_1b

    .line 971
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_16

    :cond_1a
    move-object/from16 v35, v4

    :cond_1b
    const/4 v4, 0x0

    :goto_16
    const-wide v15, 0x200000003000L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_1d

    if-eqz v12, :cond_1c

    const-string v15, "kbk"

    .line 978
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v36, v4

    goto :goto_17

    :cond_1c
    move-object/from16 v36, v4

    const/4 v15, 0x0

    :goto_17
    const/16 v4, 0xc

    .line 980
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_1e

    .line 985
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_18

    :cond_1d
    move-object/from16 v36, v4

    :cond_1e
    const/4 v4, 0x0

    :goto_18
    const-wide v15, 0x200000042000L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_20

    if-eqz v12, :cond_1f

    const-string v15, "tax_period"

    .line 992
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-object/from16 v37, v4

    goto :goto_19

    :cond_1f
    move-object/from16 v37, v4

    const/4 v15, 0x0

    :goto_19
    const/16 v4, 0x12

    .line 994
    invoke-virtual {v1, v4, v15}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_21

    .line 999
    invoke-virtual {v15}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v4

    goto :goto_1a

    :cond_20
    move-object/from16 v37, v4

    :cond_21
    const/4 v4, 0x0

    :goto_1a
    const-wide v15, 0x200000802000L

    and-long v23, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v25, v23, v15

    if-eqz v25, :cond_23

    if-eqz v12, :cond_22

    const-string v15, "purpose"

    .line 1006
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    goto :goto_1b

    :cond_22
    const/4 v12, 0x0

    :goto_1b
    const/16 v15, 0x17

    .line 1008
    invoke-virtual {v1, v15, v12}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v12, :cond_23

    .line 1013
    invoke-virtual {v12}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getWatcher()Lru/rocketbank/r2d2/utils/TextWatcherAbstract;

    move-result-object v12

    move-object v15, v13

    goto :goto_1c

    :cond_23
    move-object v15, v13

    const/4 v12, 0x0

    :goto_1c
    move-object v13, v4

    move-object v4, v11

    move-object/from16 v11, v36

    goto :goto_1d

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    :goto_1d
    const-wide v23, 0x200030002080L

    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v16, v25, v23

    if-eqz v16, :cond_2c

    if-eqz v8, :cond_25

    .line 1021
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getRecipient_name()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v16

    move-object/from16 v38, v4

    move-object/from16 v39, v5

    move-object/from16 v4, v16

    goto :goto_1e

    :cond_25
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    :goto_1e
    const/4 v5, 0x7

    .line 1023
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v25, 0x200010002080L

    and-long v31, v2, v25

    cmp-long v5, v31, v23

    if-eqz v5, :cond_2a

    if-eqz v4, :cond_26

    .line 1029
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v5

    goto :goto_1f

    :cond_26
    const/4 v5, 0x0

    :goto_1f
    cmp-long v16, v31, v23

    if-eqz v16, :cond_28

    if-eqz v5, :cond_27

    const-wide/high16 v23, -0x8000000000000000L

    or-long v25, v2, v23

    goto :goto_20

    :cond_27
    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    or-long v25, v2, v23

    goto :goto_20

    :cond_28
    move-wide/from16 v25, v2

    :goto_20
    if-eqz v5, :cond_29

    .line 1042
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_21
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_22

    :cond_29
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_21

    :goto_22
    move-object v5, v2

    move-wide/from16 v2, v25

    goto :goto_23

    :cond_2a
    const/4 v5, 0x0

    :goto_23
    const-wide v23, 0x200020002080L

    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v16, v25, v23

    if-eqz v16, :cond_2b

    if-eqz v4, :cond_2b

    .line 1048
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_2b
    const/4 v4, 0x0

    goto :goto_24

    :cond_2c
    move-object/from16 v38, v4

    move-object/from16 v39, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_24
    const-wide v25, 0x200000002100L

    and-long v40, v2, v25

    cmp-long v16, v40, v23

    move-object/from16 v42, v4

    const/16 v4, 0x8

    if-eqz v16, :cond_32

    if-eqz v8, :cond_2d

    .line 1056
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInnNecessary()Landroid/databinding/ObservableBoolean;

    move-result-object v16

    move-object/from16 v43, v5

    move-object/from16 v5, v16

    goto :goto_25

    :cond_2d
    move-object/from16 v43, v5

    const/4 v5, 0x0

    .line 1058
    :goto_25
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_2e

    .line 1063
    invoke-virtual {v5}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v5

    goto :goto_26

    :cond_2e
    const/4 v5, 0x0

    :goto_26
    const-wide/16 v23, 0x0

    cmp-long v16, v40, v23

    if-eqz v16, :cond_30

    if-eqz v5, :cond_2f

    const-wide/high16 v23, 0x80000000000000L

    or-long v25, v2, v23

    :goto_27
    move-wide/from16 v2, v25

    goto :goto_28

    :cond_2f
    const-wide/high16 v23, 0x40000000000000L

    or-long v25, v2, v23

    goto :goto_27

    :cond_30
    :goto_28
    if-eqz v5, :cond_31

    .line 1076
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v5}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v4, 0x7f1104a1

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    :cond_31
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromText:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v4}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1104a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_29

    :cond_32
    move-object/from16 v43, v5

    const/4 v4, 0x0

    :goto_29
    const-wide v23, 0x2000c0002400L

    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v5, v25, v23

    if-eqz v5, :cond_39

    if-eqz v8, :cond_33

    .line 1082
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getOktmo()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v5

    move-object/from16 v45, v4

    goto :goto_2a

    :cond_33
    move-object/from16 v45, v4

    const/4 v5, 0x0

    :goto_2a
    const/16 v4, 0xa

    .line 1084
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v25, 0x200040002400L

    and-long v31, v2, v25

    cmp-long v4, v31, v23

    if-eqz v4, :cond_38

    if-eqz v5, :cond_34

    .line 1090
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v4

    goto :goto_2b

    :cond_34
    const/4 v4, 0x0

    :goto_2b
    cmp-long v16, v31, v23

    if-eqz v16, :cond_36

    if-eqz v4, :cond_35

    const-wide/high16 v23, 0x2000000000000L

    or-long v25, v2, v23

    goto :goto_2c

    :cond_35
    const-wide/high16 v23, 0x1000000000000L

    or-long v25, v2, v23

    goto :goto_2c

    :cond_36
    move-wide/from16 v25, v2

    :goto_2c
    if-eqz v4, :cond_37

    .line 1103
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    :goto_2d
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2e

    :cond_37
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    goto :goto_2d

    :goto_2e
    move-object v4, v2

    move-wide/from16 v2, v25

    goto :goto_2f

    :cond_38
    const/4 v4, 0x0

    :goto_2f
    const-wide v23, 0x200080002400L

    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v16, v25, v23

    if-eqz v16, :cond_3a

    if-eqz v5, :cond_3a

    .line 1109
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    :cond_39
    move-object/from16 v45, v4

    const/4 v4, 0x0

    :cond_3a
    const/4 v5, 0x0

    :goto_30
    const-wide v25, 0x20010000a000L

    and-long v40, v2, v25

    cmp-long v16, v40, v23

    if-eqz v16, :cond_4f

    if-eqz v8, :cond_3b

    .line 1117
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax()Z

    move-result v16

    .line 1119
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->isCustom()Landroid/databinding/ObservableBoolean;

    move-result-object v25

    move-object/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v9

    move/from16 v5, v16

    move-object/from16 v4, v25

    goto :goto_31

    :cond_3b
    move-object/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_31
    const/16 v9, 0xf

    .line 1121
    invoke-virtual {v1, v9, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v25, 0x200100002000L

    and-long v31, v2, v25

    cmp-long v9, v31, v23

    if-eqz v9, :cond_3d

    if-eqz v5, :cond_3c

    const-wide/16 v25, 0x20

    or-long v49, v6, v25

    goto :goto_32

    :cond_3c
    const-wide/16 v25, 0x10

    or-long v49, v6, v25

    goto :goto_32

    :cond_3d
    move-wide/from16 v49, v6

    :goto_32
    cmp-long v6, v31, v23

    if-eqz v6, :cond_3f

    if-eqz v5, :cond_3e

    goto :goto_33

    :cond_3e
    const/16 v6, 0x8

    goto :goto_34

    :cond_3f
    :goto_33
    const/4 v6, 0x0

    :goto_34
    if-eqz v4, :cond_40

    .line 1139
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_35

    :cond_40
    const/4 v4, 0x0

    :goto_35
    const-wide v23, 0x20000000a000L

    and-long v25, v2, v23

    const-wide/16 v23, 0x0

    cmp-long v7, v25, v23

    if-eqz v7, :cond_42

    if-eqz v4, :cond_41

    const-wide/16 v23, 0x2

    or-long v51, v49, v23

    const-wide/16 v23, 0x800

    or-long v49, v51, v23

    goto :goto_36

    :cond_41
    const-wide/16 v23, 0x1

    or-long v51, v49, v23

    const-wide/16 v23, 0x400

    or-long v49, v51, v23

    :cond_42
    :goto_36
    const-wide/16 v23, 0x0

    cmp-long v7, v25, v23

    if-eqz v7, :cond_4a

    if-nez v4, :cond_43

    const/4 v7, 0x1

    goto :goto_37

    :cond_43
    const/4 v7, 0x0

    :goto_37
    if-eqz v4, :cond_44

    const/16 v9, 0x8

    goto :goto_38

    :cond_44
    const/16 v9, 0x64

    :goto_38
    if-eqz v4, :cond_45

    const/16 v16, 0x2

    :goto_39
    const-wide/16 v23, 0x0

    goto :goto_3a

    :cond_45
    const v16, 0x20001

    goto :goto_39

    :goto_3a
    cmp-long v30, v25, v23

    if-eqz v30, :cond_47

    if-eqz v7, :cond_46

    const-wide/16 v23, 0x8

    or-long v25, v49, v23

    const-wide/16 v23, 0x200

    or-long v49, v25, v23

    goto :goto_3b

    :cond_46
    const-wide/16 v23, 0x4

    or-long v25, v49, v23

    const-wide/16 v23, 0x100

    or-long v49, v25, v23

    :cond_47
    :goto_3b
    if-eqz v7, :cond_48

    move/from16 v53, v6

    .line 1173
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6}, Lru/rocketbank/core/widgets/RocketEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v54, v9

    const v9, 0x7f1104b3

    :goto_3c
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    :cond_48
    move/from16 v53, v6

    move/from16 v54, v9

    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6}, Lru/rocketbank/core/widgets/RocketEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f11011e

    goto :goto_3c

    :goto_3d
    if-eqz v7, :cond_49

    .line 1175
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1104b2

    :goto_3e
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3f

    :cond_49
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v7}, Lru/rocketbank/core/widgets/RocketTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f11011d

    goto :goto_3e

    :goto_3f
    move-object v9, v7

    move/from16 v23, v16

    move-object/from16 v16, v6

    move-wide/from16 v6, v49

    goto :goto_40

    :cond_4a
    move/from16 v53, v6

    move-wide/from16 v6, v49

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v54, 0x0

    :goto_40
    if-eqz v8, :cond_4b

    .line 1180
    invoke-virtual {v8, v5, v4}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->checkTaxOrCustom(ZZ)Z

    move-result v4

    goto :goto_41

    :cond_4b
    const/4 v4, 0x0

    :goto_41
    const-wide/16 v24, 0x0

    cmp-long v26, v40, v24

    if-eqz v26, :cond_4d

    if-eqz v4, :cond_4c

    const-wide/high16 v24, 0x200000000000000L

    or-long v40, v2, v24

    :goto_42
    move-wide/from16 v2, v40

    goto :goto_43

    :cond_4c
    const-wide/high16 v24, 0x100000000000000L

    or-long v40, v2, v24

    goto :goto_42

    :cond_4d
    :goto_43
    if-eqz v4, :cond_4e

    const/4 v4, 0x0

    goto :goto_44

    :cond_4e
    const/16 v4, 0x8

    goto :goto_44

    :cond_4f
    move-object/from16 v46, v4

    move-object/from16 v47, v5

    move-object/from16 v48, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    :goto_44
    const-wide v24, 0x200600006000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v26, v40, v24

    if-eqz v26, :cond_57

    if-eqz v8, :cond_50

    .line 1199
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKbk()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v26

    move/from16 v55, v4

    move/from16 v56, v5

    move-object/from16 v4, v26

    goto :goto_45

    :cond_50
    move/from16 v55, v4

    move/from16 v56, v5

    const/4 v4, 0x0

    :goto_45
    const/16 v5, 0xe

    .line 1201
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v31, 0x200200006000L

    and-long v40, v2, v31

    cmp-long v5, v40, v24

    if-eqz v5, :cond_55

    if-eqz v4, :cond_51

    .line 1207
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v5

    goto :goto_46

    :cond_51
    const/4 v5, 0x0

    :goto_46
    cmp-long v26, v40, v24

    if-eqz v26, :cond_53

    if-eqz v5, :cond_52

    const-wide/32 v24, 0x20000

    or-long v40, v6, v24

    goto :goto_47

    :cond_52
    const-wide/32 v24, 0x10000

    or-long v40, v6, v24

    goto :goto_47

    :cond_53
    move-wide/from16 v40, v6

    :goto_47
    if-eqz v5, :cond_54

    .line 1220
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    const v6, 0x7f080296

    :goto_48
    invoke-static {v5, v6}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_49

    :cond_54
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    const v6, 0x7f080294

    goto :goto_48

    :goto_49
    move-wide/from16 v6, v40

    goto :goto_4a

    :cond_55
    const/4 v5, 0x0

    :goto_4a
    const-wide v24, 0x200400006000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v26, v40, v24

    if-eqz v26, :cond_56

    if-eqz v4, :cond_56

    .line 1226
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_4b

    :cond_56
    const/4 v4, 0x0

    goto :goto_4b

    :cond_57
    move/from16 v55, v4

    move/from16 v56, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4b
    const-wide v31, 0x201800012000L

    and-long v40, v2, v31

    cmp-long v26, v40, v24

    if-eqz v26, :cond_5f

    if-eqz v8, :cond_58

    .line 1234
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getKpp()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v26

    move-object/from16 v57, v4

    move-object/from16 v58, v5

    move-object/from16 v4, v26

    goto :goto_4c

    :cond_58
    move-object/from16 v57, v4

    move-object/from16 v58, v5

    const/4 v4, 0x0

    :goto_4c
    const/16 v5, 0x10

    .line 1236
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v31, 0x201000012000L

    and-long v40, v2, v31

    cmp-long v5, v40, v24

    if-eqz v5, :cond_59

    if-eqz v4, :cond_59

    .line 1242
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    :cond_59
    const/4 v5, 0x0

    :goto_4d
    const-wide v31, 0x200800012000L

    and-long v40, v2, v31

    cmp-long v26, v40, v24

    if-eqz v26, :cond_5e

    if-eqz v4, :cond_5a

    .line 1249
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v4

    goto :goto_4e

    :cond_5a
    const/4 v4, 0x0

    :goto_4e
    cmp-long v26, v40, v24

    if-eqz v26, :cond_5c

    if-eqz v4, :cond_5b

    const-wide/high16 v24, 0x2000000000000000L

    or-long v40, v2, v24

    :goto_4f
    move-wide/from16 v2, v40

    goto :goto_50

    :cond_5b
    const-wide/high16 v24, 0x1000000000000000L

    or-long v40, v2, v24

    goto :goto_4f

    :cond_5c
    :goto_50
    if-eqz v4, :cond_5d

    .line 1262
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    move-wide/from16 v59, v2

    const v2, 0x7f080296

    invoke-static {v4, v2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    goto :goto_51

    :cond_5d
    move-wide/from16 v59, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_51
    move-object v4, v2

    move-wide/from16 v2, v59

    goto :goto_52

    :cond_5e
    const/4 v4, 0x0

    goto :goto_52

    :cond_5f
    move-object/from16 v57, v4

    move-object/from16 v58, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_52
    const-wide v24, 0x202000022000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v26, v40, v24

    if-eqz v26, :cond_61

    if-eqz v8, :cond_60

    .line 1269
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getFrom()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v24

    move-object/from16 v61, v4

    move-object/from16 v62, v5

    move-object/from16 v4, v24

    goto :goto_53

    :cond_60
    move-object/from16 v61, v4

    move-object/from16 v62, v5

    const/4 v4, 0x0

    :goto_53
    const/16 v5, 0x11

    .line 1271
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_62

    .line 1276
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_54

    :cond_61
    move-object/from16 v61, v4

    move-object/from16 v62, v5

    :cond_62
    const/4 v4, 0x0

    :goto_54
    const-wide v24, 0x20c000082000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v5, v40, v24

    if-eqz v5, :cond_6f

    if-eqz v8, :cond_63

    .line 1283
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getPurpose()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v5

    move-object/from16 v63, v4

    goto :goto_55

    :cond_63
    move-object/from16 v63, v4

    const/4 v5, 0x0

    :goto_55
    const/16 v4, 0x13

    .line 1285
    invoke-virtual {v1, v4, v5}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v31, 0x204000082000L

    and-long v40, v2, v31

    cmp-long v4, v40, v24

    if-eqz v4, :cond_68

    if-eqz v5, :cond_64

    .line 1291
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_56

    :cond_64
    const/4 v4, 0x0

    :goto_56
    if-eqz v4, :cond_65

    .line 1297
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v24

    move-object/from16 v64, v4

    move-object/from16 v65, v9

    move/from16 v4, v24

    goto :goto_57

    :cond_65
    move-object/from16 v64, v4

    move-object/from16 v65, v9

    const/4 v4, 0x0

    :goto_57
    const/16 v9, 0x64

    if-lt v4, v9, :cond_66

    const-wide/16 v24, 0x0

    const/16 v27, 0x1

    goto :goto_58

    :cond_66
    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    :goto_58
    cmp-long v9, v40, v24

    if-eqz v9, :cond_69

    if-eqz v27, :cond_67

    const-wide/32 v24, 0x8000

    or-long v40, v6, v24

    :goto_59
    move-wide/from16 v6, v40

    goto :goto_5a

    :cond_67
    const-wide/16 v24, 0x4000

    or-long v40, v6, v24

    goto :goto_59

    :cond_68
    move-object/from16 v65, v9

    const/4 v4, 0x0

    const/16 v27, 0x0

    const/16 v64, 0x0

    :cond_69
    :goto_5a
    const-wide v24, 0x208000082000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v9, v40, v24

    if-eqz v9, :cond_6e

    if-eqz v5, :cond_6a

    .line 1316
    invoke-virtual {v5}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v5

    goto :goto_5b

    :cond_6a
    const/4 v5, 0x0

    :goto_5b
    cmp-long v9, v40, v24

    if-eqz v9, :cond_6c

    if-eqz v5, :cond_6b

    const-wide/32 v24, 0x80000

    or-long v40, v6, v24

    :goto_5c
    move-wide/from16 v6, v40

    goto :goto_5d

    :cond_6b
    const-wide/32 v24, 0x40000

    or-long v40, v6, v24

    goto :goto_5c

    :cond_6c
    :goto_5d
    if-eqz v5, :cond_6d

    .line 1329
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080296

    :goto_5e
    invoke-static {v5, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_5f

    :cond_6d
    iget-object v5, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080294

    goto :goto_5e

    :cond_6e
    const/4 v5, 0x0

    goto :goto_5f

    :cond_6f
    move-object/from16 v63, v4

    move-object/from16 v65, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v27, 0x0

    const/16 v64, 0x0

    :goto_5f
    const-wide v24, 0x200000102000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v9, v40, v24

    if-eqz v9, :cond_75

    if-eqz v8, :cond_70

    .line 1336
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getShowTax()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    move/from16 v66, v4

    goto :goto_60

    :cond_70
    move/from16 v66, v4

    const/4 v9, 0x0

    :goto_60
    const/16 v4, 0x14

    .line 1338
    invoke-virtual {v1, v4, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_71

    .line 1343
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_61

    :cond_71
    const/4 v4, 0x0

    :goto_61
    const-wide/16 v24, 0x0

    cmp-long v9, v40, v24

    if-eqz v9, :cond_73

    if-eqz v4, :cond_72

    const-wide/16 v24, 0x80

    or-long v40, v6, v24

    goto :goto_62

    :cond_72
    const-wide/16 v24, 0x40

    or-long v40, v6, v24

    goto :goto_62

    :cond_73
    move-wide/from16 v40, v6

    :goto_62
    if-eqz v4, :cond_74

    const/16 v44, 0x0

    goto :goto_63

    :cond_74
    const/16 v44, 0x8

    :goto_63
    move-wide/from16 v6, v40

    goto :goto_64

    :cond_75
    move/from16 v66, v4

    const/16 v44, 0x0

    :goto_64
    const-wide v24, 0x310002202000L

    and-long v40, v2, v24

    const-wide/16 v24, 0x0

    cmp-long v4, v40, v24

    if-eqz v4, :cond_7e

    if-eqz v8, :cond_76

    .line 1362
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getInn_from()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v4

    .line 1364
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getUin()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v9

    move-object/from16 v67, v5

    goto :goto_65

    :cond_76
    move-object/from16 v67, v5

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_65
    const/16 v5, 0x15

    .line 1366
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const/16 v5, 0x19

    .line 1367
    invoke-virtual {v1, v5, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_77

    .line 1372
    invoke-virtual {v4}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_66

    :cond_77
    const/4 v4, 0x0

    :goto_66
    if-eqz v9, :cond_78

    .line 1376
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_67

    :cond_78
    const/4 v5, 0x0

    :goto_67
    if-eqz v8, :cond_79

    .line 1382
    invoke-virtual {v8, v5, v4}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->checkUinAndInn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_68

    :cond_79
    const/4 v9, 0x0

    :goto_68
    const-wide/16 v24, 0x0

    cmp-long v26, v40, v24

    if-eqz v26, :cond_7b

    if-eqz v9, :cond_7a

    const-wide v24, 0x800000000000L

    or-long v40, v2, v24

    const-wide/high16 v2, 0x20000000000000L

    or-long v24, v40, v2

    :goto_69
    move-wide/from16 v2, v24

    goto :goto_6a

    :cond_7a
    const-wide v24, 0x400000000000L

    or-long v40, v2, v24

    const-wide/high16 v2, 0x10000000000000L

    or-long v24, v40, v2

    goto :goto_69

    :cond_7b
    :goto_6a
    if-eqz v9, :cond_7c

    move-wide/from16 v68, v2

    .line 1397
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f080294

    goto :goto_6b

    :cond_7c
    move-wide/from16 v68, v2

    const v3, 0x7f080296

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080294

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_6b
    if-eqz v9, :cond_7d

    .line 1399
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    const v3, 0x7f080296

    invoke-static {v9, v3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v3, v9

    goto :goto_6c

    :cond_7d
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080294

    invoke-static {v3, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_6c

    :cond_7e
    move-object/from16 v67, v5

    move-wide/from16 v68, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6c
    const-wide v24, 0x260000402000L

    and-long v40, v68, v24

    const-wide/16 v24, 0x0

    cmp-long v9, v40, v24

    if-eqz v9, :cond_86

    if-eqz v8, :cond_7f

    .line 1405
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_inn()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v9

    move-object/from16 v70, v2

    goto :goto_6d

    :cond_7f
    move-object/from16 v70, v2

    const/4 v9, 0x0

    :goto_6d
    const/16 v2, 0x16

    .line 1407
    invoke-virtual {v1, v2, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    const-wide v31, 0x240000402000L

    and-long v40, v68, v31

    cmp-long v2, v40, v24

    if-eqz v2, :cond_80

    if-eqz v9, :cond_80

    .line 1413
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_6e

    :cond_80
    const/4 v2, 0x0

    :goto_6e
    const-wide v31, 0x220000402000L

    and-long v40, v68, v31

    cmp-long v26, v40, v24

    if-eqz v26, :cond_85

    if-eqz v9, :cond_81

    .line 1420
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValid()Z

    move-result v9

    goto :goto_6f

    :cond_81
    const/4 v9, 0x0

    :goto_6f
    cmp-long v26, v40, v24

    if-eqz v26, :cond_83

    if-eqz v9, :cond_82

    const-wide/high16 v24, 0x8000000000000L

    or-long v40, v68, v24

    goto :goto_70

    :cond_82
    const-wide/high16 v24, 0x4000000000000L

    or-long v40, v68, v24

    goto :goto_70

    :cond_83
    move-wide/from16 v40, v68

    :goto_70
    if-eqz v9, :cond_84

    .line 1433
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v71, v2

    const v2, 0x7f080296

    invoke-static {v9, v2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object v2, v9

    goto :goto_71

    :cond_84
    move-object/from16 v71, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080294

    invoke-static {v2, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_71
    move-wide/from16 v68, v40

    goto :goto_72

    :cond_85
    move-object/from16 v71, v2

    const/4 v2, 0x0

    goto :goto_72

    :cond_86
    move-object/from16 v70, v2

    const/4 v2, 0x0

    const/16 v71, 0x0

    :goto_72
    const-wide v24, 0x280001002000L

    and-long v40, v68, v24

    const-wide/16 v24, 0x0

    cmp-long v9, v40, v24

    if-eqz v9, :cond_8d

    if-eqz v8, :cond_87

    .line 1440
    invoke-virtual {v8}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->getTax_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v9

    move-object/from16 v72, v2

    goto :goto_73

    :cond_87
    move-object/from16 v72, v2

    const/4 v9, 0x0

    :goto_73
    const/16 v2, 0x18

    .line 1442
    invoke-virtual {v1, v2, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_88

    .line 1447
    invoke-virtual {v9}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_74

    :cond_88
    const/4 v2, 0x0

    :goto_74
    if-eqz v8, :cond_89

    .line 1453
    invoke-virtual {v8, v2}, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;->checkTaxPeriod(Ljava/lang/String;)Z

    move-result v8

    move/from16 v29, v8

    const-wide/16 v8, 0x0

    goto :goto_75

    :cond_89
    const-wide/16 v8, 0x0

    const/16 v29, 0x0

    :goto_75
    cmp-long v24, v40, v8

    if-eqz v24, :cond_8b

    if-eqz v29, :cond_8a

    const-wide/16 v8, 0x2000

    or-long v24, v6, v8

    :goto_76
    move-wide/from16 v6, v24

    goto :goto_77

    :cond_8a
    const-wide/16 v8, 0x1000

    or-long v24, v6, v8

    goto :goto_76

    :cond_8b
    :goto_77
    if-eqz v29, :cond_8c

    .line 1466
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080296

    :goto_78
    invoke-static {v8, v9}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_79

    :cond_8c
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    const v9, 0x7f080294

    goto :goto_78

    :goto_79
    move-object/from16 v99, v2

    move-object/from16 v73, v4

    move-object/from16 v102, v5

    move-object/from16 v98, v8

    move-object/from16 v91, v10

    move-object/from16 v97, v13

    move-object/from16 v101, v15

    move-object/from16 v88, v16

    move/from16 v90, v23

    move-object/from16 v83, v33

    move-object/from16 v94, v34

    move-object/from16 v74, v35

    move-object/from16 v80, v37

    move-object/from16 v8, v38

    move-object/from16 v10, v39

    move-object/from16 v96, v42

    move-object/from16 v95, v43

    move/from16 v100, v44

    move-object/from16 v79, v45

    move-object/from16 v92, v46

    move-object/from16 v93, v47

    move-object/from16 v9, v48

    move/from16 v77, v53

    move/from16 v89, v54

    move/from16 v86, v55

    move/from16 v78, v56

    move-object/from16 v82, v57

    move-object/from16 v81, v58

    move-object/from16 v84, v61

    move-object/from16 v85, v62

    move-object/from16 v5, v63

    move-object/from16 v4, v64

    move-object/from16 v87, v65

    move/from16 v2, v66

    move-object/from16 v15, v70

    move-object/from16 v76, v71

    move-object/from16 v75, v72

    goto :goto_7a

    :cond_8d
    move-object/from16 v72, v2

    move-object/from16 v73, v4

    move-object/from16 v102, v5

    move-object/from16 v91, v10

    move-object/from16 v97, v13

    move-object/from16 v101, v15

    move-object/from16 v88, v16

    move/from16 v90, v23

    move-object/from16 v83, v33

    move-object/from16 v94, v34

    move-object/from16 v74, v35

    move-object/from16 v80, v37

    move-object/from16 v8, v38

    move-object/from16 v10, v39

    move-object/from16 v96, v42

    move-object/from16 v95, v43

    move/from16 v100, v44

    move-object/from16 v79, v45

    move-object/from16 v92, v46

    move-object/from16 v93, v47

    move-object/from16 v9, v48

    move/from16 v77, v53

    move/from16 v89, v54

    move/from16 v86, v55

    move/from16 v78, v56

    move-object/from16 v82, v57

    move-object/from16 v81, v58

    move-object/from16 v84, v61

    move-object/from16 v85, v62

    move-object/from16 v5, v63

    move-object/from16 v4, v64

    move-object/from16 v87, v65

    move/from16 v2, v66

    move-object/from16 v15, v70

    move-object/from16 v76, v71

    move-object/from16 v75, v72

    const/16 v98, 0x0

    const/16 v99, 0x0

    :goto_7a
    move-object v13, v3

    move-object/from16 v3, v67

    goto :goto_7b

    :cond_8e
    move-wide/from16 v68, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v27, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    :goto_7b
    const-wide/32 v23, 0x8000

    and-long v25, v6, v23

    const-wide/16 v6, 0x0

    cmp-long v16, v25, v6

    if-eqz v16, :cond_8f

    rsub-int v2, v2, 0xd2

    .line 1478
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7c

    :cond_8f
    const/4 v2, 0x0

    :goto_7c
    const-wide v23, 0x204000082000L

    and-long v25, v68, v23

    cmp-long v16, v25, v6

    if-eqz v16, :cond_91

    if-eqz v27, :cond_90

    goto :goto_7d

    :cond_90
    const-string v2, ""

    goto :goto_7d

    :cond_91
    const/4 v2, 0x0

    :goto_7d
    const-wide v23, 0x200000802000L

    and-long v27, v68, v23

    cmp-long v16, v27, v6

    if-eqz v16, :cond_92

    .line 1490
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v6, v12}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_92
    const-wide v6, 0x208000082000L

    and-long v23, v68, v6

    const-wide/16 v6, 0x0

    cmp-long v12, v23, v6

    if-eqz v12, :cond_93

    .line 1495
    iget-object v12, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v12, v3}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_93
    cmp-long v3, v25, v6

    if-eqz v3, :cond_94

    .line 1500
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->edittextTransfersBankPurpose:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v3, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1501
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView10:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v3, v2}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_94
    const-wide v2, 0x200000002800L

    and-long v23, v68, v2

    cmp-long v2, v23, v6

    if-eqz v2, :cond_95

    .line 1506
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->from:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v11}, Lru/rocketbank/core/widgets/RocketTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_95
    const-wide v2, 0x202000022000L

    and-long v11, v68, v2

    cmp-long v2, v11, v6

    if-eqz v2, :cond_96

    .line 1511
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->from:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v2, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_96
    const-wide v2, 0x200000002008L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_97

    .line 1516
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v2, v8}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_97
    and-long v2, v68, v19

    cmp-long v4, v2, v6

    if-eqz v4, :cond_98

    .line 1521
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v9}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_98
    and-long v2, v68, v21

    cmp-long v4, v2, v6

    if-eqz v4, :cond_99

    .line 1526
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->inn:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v14}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_99
    const-wide v2, 0x200000002020L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9a

    .line 1531
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v2, v10}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_9a
    const-wide v2, 0x310002202000L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9b

    .line 1536
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v13}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1537
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-static {v2, v15}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_9b
    const-wide v2, 0x210000202000L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9c

    .line 1542
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFrom:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v4, v73

    invoke-static {v2, v4}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9c
    const-wide v2, 0x200000002200L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9d

    .line 1547
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v3, v74

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_9d
    const-wide v2, 0x220000402000L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9e

    .line 1552
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v3, v75

    invoke-static {v2, v3}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_9e
    const-wide v2, 0x240000402000L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_9f

    .line 1557
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v3, v76

    invoke-static {v2, v3}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9f
    const-wide v2, 0x200100002000L

    and-long v4, v68, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_a0

    .line 1562
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromTax:Lru/rocketbank/core/widgets/RocketEditText;

    move/from16 v3, v77

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    .line 1563
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView14:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 1564
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView16:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 1565
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    move/from16 v4, v78

    invoke-static {v2, v4}, Landroid/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 1566
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxBasis:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    :cond_a0
    const-wide v2, 0x200000002100L

    and-long v4, v68, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_a1

    .line 1571
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->innFromText:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v5, v79

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a1
    const-wide v4, 0x200000003000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a2

    .line 1576
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v80

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a2
    const-wide v4, 0x200200006000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a3

    .line 1581
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v81

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_a3
    const-wide v4, 0x200400006000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a4

    .line 1586
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kbk:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v82

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a4
    const-wide v4, 0x200000002010L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a5

    .line 1591
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v83

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_a5
    const-wide v4, 0x200800012000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a6

    .line 1596
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v84

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_a6
    const-wide v4, 0x201000012000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a7

    .line 1601
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->kpp:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v85

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_a7
    const-wide v4, 0x20010000a000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a8

    .line 1606
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v5, v86

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 1607
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->setVisibility(I)V

    :cond_a8
    const-wide v4, 0x20000000a000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_a9

    .line 1612
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mboundView18:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v3, v87

    invoke-static {v2, v3}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1613
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v3, v88

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1614
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move/from16 v3, v89

    invoke-static {v2, v3}, Landroid/databinding/adapters/TextViewBindingAdapter;->setMaxLength(Landroid/widget/TextView;I)V

    .line 1616
    invoke-static {}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->getBuildSdkInt()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a9

    .line 1618
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move/from16 v3, v90

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketEditText;->setInputType(I)V

    :cond_a9
    const-wide v2, 0x200000002004L

    and-long v4, v68, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_aa

    .line 1624
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v10, v91

    invoke-virtual {v4, v10}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_aa
    const-wide v4, 0x200040002400L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_ab

    .line 1629
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v92

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_ab
    const-wide v4, 0x200080002400L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_ac

    .line 1634
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->oktmo:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v93

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_ac
    const-wide v4, 0x200000002040L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_ad

    .line 1639
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v94

    invoke-virtual {v4, v5}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_ad
    const-wide v4, 0x200010002080L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_ae

    .line 1644
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v95

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_ae
    const-wide v4, 0x200020002080L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_af

    .line 1649
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->recipientName:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v96

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_af
    const-wide v4, 0x200000000000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_b0

    .line 1654
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcher:Landroid/support/v7/widget/SwitchCompat;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->switcherandroidCheckedAttrChanged:Landroid/databinding/InverseBindingListener;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/databinding/InverseBindingListener;)V

    .line 1655
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriodandroidTextAttrChanged:Landroid/databinding/InverseBindingListener;

    invoke-static {v2, v4, v4, v4, v3}, Landroid/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroid/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroid/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroid/databinding/InverseBindingListener;)V

    :cond_b0
    const-wide v2, 0x200000042000L

    and-long v4, v68, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_b1

    .line 1660
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v13, v97

    invoke-virtual {v4, v13}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b1
    const-wide v4, 0x280001002000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_b2

    .line 1665
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v8, v98

    invoke-static {v4, v8}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1666
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxPeriod:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v99

    invoke-static {v4, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b2
    const-wide v4, 0x200000102000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_b3

    .line 1671
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->taxSwitch:Landroid/support/v7/widget/CardView;

    move/from16 v5, v100

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    :cond_b3
    and-long v4, v68, v17

    cmp-long v6, v4, v2

    if-eqz v6, :cond_b4

    .line 1676
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v15, v101

    invoke-virtual {v4, v15}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_b4
    const-wide v4, 0x300002002000L

    and-long v6, v68, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_b5

    .line 1681
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->uin:Lru/rocketbank/core/widgets/RocketEditText;

    move-object/from16 v5, v102

    invoke-static {v2, v5}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_b5
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 728
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getBudget()Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;
    .locals 1

    .line 243
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags_1:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 214
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 203
    monitor-enter p0

    const-wide v0, 0x200000000000L

    .line 204
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 205
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags_1:J

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 206
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

    .line 300
    :pswitch_0
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 298
    :pswitch_1
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetTaxPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 296
    :pswitch_2
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 294
    :pswitch_3
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetTaxInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 292
    :pswitch_4
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetInnFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 290
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetShowTax(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 288
    :pswitch_6
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetPurpose(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 286
    :pswitch_7
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsTaxPeriod(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 284
    :pswitch_8
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 282
    :pswitch_9
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 280
    :pswitch_a
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetIsCustom(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 278
    :pswitch_b
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetKbk(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 276
    :pswitch_c
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;I)Z

    move-result p1

    return p1

    .line 274
    :pswitch_d
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsKbk(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 272
    :pswitch_e
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 270
    :pswitch_f
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetOktmo(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 268
    :pswitch_10
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsTaxInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 266
    :pswitch_11
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetInnNecessary(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 264
    :pswitch_12
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 262
    :pswitch_13
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsRecipientName(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 260
    :pswitch_14
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsInnFrom(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 258
    :pswitch_15
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsKpp(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 256
    :pswitch_16
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 254
    :pswitch_17
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsOktmo(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 252
    :pswitch_18
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetInn(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    .line 250
    :pswitch_19
    check-cast p2, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->onChangeBudgetFieldsUin(Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V
    .locals 6

    const/16 v0, 0xd

    .line 233
    invoke-virtual {p0, v0, p1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    .line 234
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mBudget:Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->mDirtyFlags:J

    .line 237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 238
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->notifyPropertyChanged(I)V

    .line 239
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 237
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 224
    check-cast p2, Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;->setBudget(Lru/rocketbank/r2d2/fragments/transfers/BudgetObservable;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
