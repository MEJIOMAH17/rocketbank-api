.class public Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ActivitySoundBinding.java"

# interfaces
.implements Landroid/databinding/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final activatedDeath:Landroid/widget/ImageView;

.field public final activatedGnoms:Landroid/widget/ImageView;

.field public final activatedLejeboker:Landroid/widget/ImageView;

.field public final activatedOrcs:Landroid/widget/ImageView;

.field public final activatedRickmorty:Landroid/widget/ImageView;

.field public final activatedSystem:Landroid/widget/ImageView;

.field public final bottom:Landroid/widget/LinearLayout;

.field public final headMusic:Landroid/widget/LinearLayout;

.field public final include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

.field private final mCallback35:Landroid/view/View$OnClickListener;

.field private final mCallback36:Landroid/view/View$OnClickListener;

.field private final mCallback37:Landroid/view/View$OnClickListener;

.field private final mCallback38:Landroid/view/View$OnClickListener;

.field private final mCallback39:Landroid/view/View$OnClickListener;

.field private final mCallback40:Landroid/view/View$OnClickListener;

.field private final mCallback41:Landroid/view/View$OnClickListener;

.field private mData:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

.field private mDirtyFlags:J

.field private mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

.field private mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/RelativeLayout;

.field private final mboundView11:Landroid/widget/RelativeLayout;

.field private final mboundView3:Landroid/widget/RelativeLayout;

.field private final mboundView5:Landroid/widget/RelativeLayout;

.field private final mboundView7:Landroid/widget/RelativeLayout;

.field private final mboundView9:Landroid/widget/RelativeLayout;

.field public final playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final previewPlayTitle:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundImgDeath:Landroid/widget/ImageView;

.field public final soundImgGnoms:Landroid/widget/ImageView;

.field public final soundImgLejeboker:Landroid/widget/ImageView;

.field public final soundImgOrcs:Landroid/widget/ImageView;

.field public final soundImgRickmorty:Landroid/widget/ImageView;

.field public final soundImgSystem:Landroid/widget/ImageView;

.field public final soundNameDeath:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundNameGnoms:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundNameLejeboker:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundNameOrcs:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundNameRickmorty:Lru/rocketbank/core/widgets/RocketTextView;

.field public final soundNameSystem:Lru/rocketbank/core/widgets/RocketTextView;

.field public final sounds:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 16
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "toolbar_with_button_only"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/16 v5, 0x11

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c01ba

    aput v5, v1, v4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    sput-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090337

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033d

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090335

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033b

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090332

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090338

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090333

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090339

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090336

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033c

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090334

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033a

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f09033e

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 9

    const/16 v0, 0x11

    .line 128
    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 1582
    iput-wide v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 129
    sget-object v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x1f

    invoke-static {p1, p2, v3, v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x6

    .line 130
    aget-object v2, p1, v1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    .line 131
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 132
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xc

    .line 134
    aget-object v2, p1, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 136
    aget-object v4, p1, v2

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    .line 137
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0xa

    .line 138
    aget-object v4, p1, v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    .line 139
    iget-object v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x2

    .line 140
    aget-object v5, p1, v4

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    .line 141
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0xd

    .line 142
    aget-object v5, p1, v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bottom:Landroid/widget/LinearLayout;

    .line 143
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bottom:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0xe

    .line 144
    aget-object v5, p1, v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->headMusic:Landroid/widget/LinearLayout;

    .line 145
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->headMusic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 146
    aget-object v0, p1, v0

    check-cast v0, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 148
    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView0:Landroid/widget/LinearLayout;

    .line 149
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 150
    aget-object v5, p1, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView1:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView1:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v5, 0xb

    .line 152
    aget-object v5, p1, v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView11:Landroid/widget/RelativeLayout;

    .line 153
    iget-object v5, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView11:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v5, 0x3

    .line 154
    aget-object v6, p1, v5

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView3:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v6, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v6, 0x5

    .line 156
    aget-object v7, p1, v6

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView5:Landroid/widget/RelativeLayout;

    .line 157
    iget-object v7, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView5:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x7

    .line 158
    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView7:Landroid/widget/RelativeLayout;

    .line 159
    iget-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView7:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v8, 0x9

    .line 160
    aget-object v8, p1, v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView9:Landroid/widget/RelativeLayout;

    .line 161
    iget-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView9:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/16 v8, 0x10

    .line 162
    aget-object v8, p1, v8

    check-cast v8, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 163
    iget-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v8, 0xf

    .line 164
    aget-object v8, p1, v8

    check-cast v8, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->previewPlayTitle:Lru/rocketbank/core/widgets/RocketTextView;

    .line 165
    iget-object v8, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->previewPlayTitle:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-virtual {v8, v3}, Lru/rocketbank/core/widgets/RocketTextView;->setTag(Ljava/lang/Object;)V

    const/16 v3, 0x16

    .line 166
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgDeath:Landroid/widget/ImageView;

    const/16 v3, 0x18

    .line 167
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgGnoms:Landroid/widget/ImageView;

    const/16 v3, 0x1c

    .line 168
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgLejeboker:Landroid/widget/ImageView;

    const/16 v3, 0x14

    .line 169
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgOrcs:Landroid/widget/ImageView;

    const/16 v3, 0x1a

    .line 170
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgRickmorty:Landroid/widget/ImageView;

    const/16 v3, 0x12

    .line 171
    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundImgSystem:Landroid/widget/ImageView;

    const/16 v3, 0x17

    .line 172
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameDeath:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x19

    .line 173
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameGnoms:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x1d

    .line 174
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameLejeboker:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x15

    .line 175
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameOrcs:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x1b

    .line 176
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameRickmorty:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x13

    .line 177
    aget-object v3, p1, v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object v3, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->soundNameSystem:Lru/rocketbank/core/widgets/RocketTextView;

    const/16 v3, 0x1e

    .line 178
    aget-object p1, p1, v3

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->sounds:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setRootTag(Landroid/view/View;)V

    .line 181
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v6}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback39:Landroid/view/View$OnClickListener;

    .line 182
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v5}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback37:Landroid/view/View$OnClickListener;

    .line 183
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback38:Landroid/view/View$OnClickListener;

    .line 184
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback35:Landroid/view/View$OnClickListener;

    .line 185
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v4}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback36:Landroid/view/View$OnClickListener;

    .line 186
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v1}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback40:Landroid/view/View$OnClickListener;

    .line 187
    new-instance p1, Landroid/databinding/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v7}, Landroid/databinding/generated/callback/OnClickListener;-><init>(Landroid/databinding/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback41:Landroid/view/View$OnClickListener;

    .line 188
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->invalidateAll()V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 1

    .line 1602
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 2

    const-string v0, "layout/activity_sound_0"

    .line 1606
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
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

    .line 1609
    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    invoke-direct {v0, p1, p0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 1

    .line 1594
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 3

    const v0, 0x7f0c0060

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1598
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 1

    .line 1586
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;
    .locals 1

    const v0, 0x7f0c0060

    .line 1590
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    return-object p0
.end method

.method private onChangeDataBackgroundColor(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x100

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 420
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

.method private onChangeDataSoundName(Landroid/databinding/ObservableField;I)Z
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

    .line 463
    monitor-enter p0

    .line 464
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 465
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

.method private onChangeDataSubTextColor(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 382
    monitor-enter p0

    .line 383
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 384
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

.method private onChangeDataTextColor(Landroid/databinding/ObservableInt;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 409
    monitor-enter p0

    .line 410
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 411
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

.method private onChangeInclude(Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 393
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

.method private onChangeItems0IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 373
    monitor-enter p0

    .line 374
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 375
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

.method private onChangeItems0IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 402
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

.method private onChangeItems1IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x8000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 483
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

.method private onChangeItems1IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 472
    monitor-enter p0

    .line 473
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 474
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

.method private onChangeItems2IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 454
    monitor-enter p0

    .line 455
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 456
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

.method private onChangeItems2IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 348
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

.method private onChangeItems3IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 366
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

.method private onChangeItems3IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 355
    monitor-enter p0

    .line 356
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 357
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

.method private onChangeItems4IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 490
    monitor-enter p0

    .line 491
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v0, 0x10000

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 492
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

.method private onChangeItems4IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 427
    monitor-enter p0

    .line 428
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x200

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 429
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

.method private onChangeItems5IsActive(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 445
    monitor-enter p0

    .line 446
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x800

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 447
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

.method private onChangeItems5IsCurrent(Landroid/databinding/ObservableBoolean;I)Z
    .locals 4

    if-nez p2, :cond_0

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-wide p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x400

    or-long v2, p1, v0

    iput-wide v2, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 438
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
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_c

    .line 1567
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    if-eqz p1, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_13

    .line 1575
    invoke-interface {p1}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundHeaderClicked()V

    goto/16 :goto_c

    .line 1528
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1534
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    if-eqz v2, :cond_13

    if-eqz v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    if-eqz v2, :cond_13

    const/4 v2, 0x4

    .line 1548
    invoke-static {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_3

    move p2, v0

    :cond_3
    if-eqz p2, :cond_13

    .line 1554
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1556
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    .line 1311
    :pswitch_2
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1319
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p2

    :goto_2
    if-eqz v2, :cond_13

    if-eqz v1, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    move v2, p2

    :goto_3
    if-eqz v2, :cond_13

    const/4 v2, 0x5

    .line 1333
    invoke-static {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_6

    move p2, v0

    :cond_6
    if-eqz p2, :cond_13

    .line 1339
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1341
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    .line 1397
    :pswitch_3
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1405
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_4

    :cond_7
    move v2, p2

    :goto_4
    if-eqz v2, :cond_13

    if-eqz v1, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, p2

    :goto_5
    if-eqz v2, :cond_13

    const/4 v2, 0x3

    .line 1419
    invoke-static {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_9

    move p2, v0

    :cond_9
    if-eqz p2, :cond_13

    .line 1425
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1427
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    .line 1360
    :pswitch_4
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1362
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_a

    move v2, v0

    goto :goto_6

    :cond_a
    move v2, p2

    :goto_6
    if-eqz v2, :cond_13

    if-eqz v1, :cond_b

    move v2, v0

    goto :goto_7

    :cond_b
    move v2, p2

    :goto_7
    if-eqz v2, :cond_13

    const/4 v2, 0x2

    .line 1376
    invoke-static {v1, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_c

    move p2, v0

    :cond_c
    if-eqz p2, :cond_13

    .line 1382
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1384
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    .line 1489
    :pswitch_5
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1491
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_d

    move v2, v0

    goto :goto_8

    :cond_d
    move v2, p2

    :goto_8
    if-eqz v2, :cond_13

    if-eqz v1, :cond_e

    move v2, v0

    goto :goto_9

    :cond_e
    move v2, p2

    :goto_9
    if-eqz v2, :cond_13

    .line 1505
    invoke-static {v1, v0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_f

    move p2, v0

    :cond_f
    if-eqz p2, :cond_13

    .line 1511
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1513
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    .line 1444
    :pswitch_6
    iget-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 1446
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    if-eqz p1, :cond_10

    move v2, v0

    goto :goto_a

    :cond_10
    move v2, p2

    :goto_a
    if-eqz v2, :cond_13

    if-eqz v1, :cond_11

    move v2, v0

    goto :goto_b

    :cond_11
    move v2, p2

    :goto_b
    if-eqz v2, :cond_13

    .line 1462
    invoke-static {v1, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    if-eqz v1, :cond_12

    move p2, v0

    :cond_12
    if-eqz p2, :cond_13

    .line 1468
    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->getSound()I

    move-result p2

    .line 1470
    invoke-interface {p1, p2}, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;->onSoundItemClicked(I)V

    return-void

    :cond_13
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 82

    move-object/from16 v1, p0

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    iget-wide v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 503
    iput-wide v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 504
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    iget-object v6, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    .line 545
    iget-object v7, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 554
    iget-object v8, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mData:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    .line 563
    iget-object v9, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    const-wide/32 v10, 0x502190

    and-long v12, v2, v10

    cmp-long v10, v12, v4

    const/4 v11, 0x4

    if-eqz v10, :cond_8

    const-wide/32 v14, 0x500010

    and-long v16, v2, v14

    cmp-long v10, v16, v4

    if-eqz v10, :cond_1

    if-eqz v8, :cond_0

    .line 578
    invoke-virtual {v8}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSubTextColor()Landroid/databinding/ObservableInt;

    move-result-object v10

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 580
    :goto_0
    invoke-virtual {v1, v11, v10}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v10, :cond_1

    .line 585
    invoke-virtual {v10}, Landroid/databinding/ObservableInt;->get()I

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    const-wide/32 v14, 0x500080

    and-long v16, v2, v14

    cmp-long v14, v16, v4

    if-eqz v14, :cond_3

    if-eqz v8, :cond_2

    .line 592
    invoke-virtual {v8}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getTextColor()Landroid/databinding/ObservableInt;

    move-result-object v14

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x7

    .line 594
    invoke-virtual {v1, v15, v14}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v14, :cond_3

    .line 599
    invoke-virtual {v14}, Landroid/databinding/ObservableInt;->get()I

    move-result v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    const-wide/32 v15, 0x500100

    and-long v17, v2, v15

    cmp-long v15, v17, v4

    if-eqz v15, :cond_5

    if-eqz v8, :cond_4

    .line 606
    invoke-virtual {v8}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getBackgroundColor()Landroid/databinding/ObservableInt;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/16 v12, 0x8

    .line 608
    invoke-virtual {v1, v12, v15}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_5

    .line 613
    invoke-virtual {v15}, Landroid/databinding/ObservableInt;->get()I

    move-result v12

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    const-wide/32 v15, 0x502000

    and-long v17, v2, v15

    cmp-long v15, v17, v4

    if-eqz v15, :cond_7

    if-eqz v8, :cond_6

    .line 620
    invoke-virtual {v8}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSoundName()Landroid/databinding/ObservableField;

    move-result-object v8

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    const/16 v15, 0xd

    .line 622
    invoke-virtual {v1, v15, v8}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v8, :cond_7

    .line 627
    invoke-virtual {v8}, Landroid/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_7
    const-wide/32 v15, 0x61de4f

    and-long v17, v2, v15

    cmp-long v15, v17, v4

    const-wide/32 v16, 0x610200

    const-wide/32 v20, 0x600800

    const-wide/32 v22, 0x600c00

    const-wide/32 v25, 0x600004

    const/4 v11, 0x3

    const-wide/32 v28, 0x600006

    const-wide/32 v30, 0x600048

    const/4 v13, 0x1

    if-eqz v15, :cond_51

    and-long v33, v2, v28

    cmp-long v15, v33, v4

    const v5, 0x7f060208

    if-eqz v15, :cond_14

    if-eqz v9, :cond_9

    .line 638
    invoke-static {v9, v11}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    if-eqz v15, :cond_a

    .line 644
    invoke-virtual {v15}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v18

    move-object/from16 v11, v18

    goto :goto_9

    :cond_a
    const/4 v11, 0x0

    .line 646
    :goto_9
    invoke-virtual {v1, v13, v11}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_b

    .line 651
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    const-wide/16 v35, 0x0

    cmp-long v18, v33, v35

    if-eqz v18, :cond_d

    if-eqz v11, :cond_c

    const-wide v33, 0x4000000000L

    or-long v38, v2, v33

    :goto_b
    move-wide/from16 v2, v38

    goto :goto_c

    :cond_c
    const-wide v33, 0x2000000000L

    or-long v38, v2, v33

    goto :goto_b

    :cond_d
    :goto_c
    and-long v33, v2, v25

    cmp-long v18, v33, v35

    if-eqz v18, :cond_13

    if-eqz v15, :cond_e

    .line 665
    invoke-virtual {v15}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v18

    move-object/from16 v13, v18

    const/4 v4, 0x2

    goto :goto_d

    :cond_e
    const/4 v4, 0x2

    const/4 v13, 0x0

    .line 667
    :goto_d
    invoke-virtual {v1, v4, v13}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v13, :cond_f

    .line 672
    invoke-virtual {v13}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_e

    :cond_f
    const/4 v4, 0x0

    :goto_e
    cmp-long v18, v33, v35

    if-eqz v18, :cond_11

    if-eqz v4, :cond_10

    const-wide v33, 0x40000000000L

    or-long v38, v2, v33

    :goto_f
    move-wide/from16 v2, v38

    goto :goto_10

    :cond_10
    const-wide v33, 0x20000000000L

    or-long v38, v2, v33

    goto :goto_f

    :cond_11
    :goto_10
    if-eqz v4, :cond_12

    move-wide/from16 v41, v2

    .line 685
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    invoke-static {v2, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_11

    :cond_12
    move-wide/from16 v41, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    const v3, 0x7f060237

    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    :goto_11
    move/from16 v18, v2

    move-wide/from16 v2, v41

    move-object/from16 v81, v13

    move v13, v4

    move-object/from16 v4, v81

    goto :goto_13

    :cond_13
    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_12

    :cond_14
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_12
    const/16 v18, 0x0

    :goto_13
    and-long v33, v2, v22

    const-wide/16 v35, 0x0

    cmp-long v38, v33, v35

    if-eqz v38, :cond_20

    if-eqz v9, :cond_15

    const/4 v5, 0x5

    .line 692
    invoke-static {v9, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    goto :goto_14

    :cond_15
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_16

    .line 698
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v38

    move-object/from16 v43, v4

    move/from16 v44, v11

    move-object/from16 v4, v38

    goto :goto_15

    :cond_16
    move-object/from16 v43, v4

    move/from16 v44, v11

    const/4 v4, 0x0

    :goto_15
    const/16 v11, 0xa

    .line 700
    invoke-virtual {v1, v11, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_17

    .line 705
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_16

    :cond_17
    const/4 v4, 0x0

    :goto_16
    const-wide/16 v35, 0x0

    cmp-long v11, v33, v35

    if-eqz v11, :cond_19

    if-eqz v4, :cond_18

    const-wide/high16 v33, 0x10000000000000L

    or-long v38, v2, v33

    :goto_17
    move-wide/from16 v2, v38

    goto :goto_18

    :cond_18
    const-wide/high16 v33, 0x8000000000000L

    or-long v38, v2, v33

    goto :goto_17

    :cond_19
    :goto_18
    and-long v33, v2, v20

    cmp-long v11, v33, v35

    if-eqz v11, :cond_1f

    if-eqz v5, :cond_1a

    .line 719
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    move/from16 v45, v4

    goto :goto_19

    :cond_1a
    move/from16 v45, v4

    const/4 v11, 0x0

    :goto_19
    const/16 v4, 0xb

    .line 721
    invoke-virtual {v1, v4, v11}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_1b

    .line 726
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_1a

    :cond_1b
    const/4 v4, 0x0

    :goto_1a
    const-wide/16 v35, 0x0

    cmp-long v38, v33, v35

    if-eqz v38, :cond_1d

    if-eqz v4, :cond_1c

    const-wide/32 v33, 0x40000000

    or-long v38, v2, v33

    :goto_1b
    move-wide/from16 v2, v38

    goto :goto_1c

    :cond_1c
    const-wide/32 v33, 0x20000000

    or-long v38, v2, v33

    goto :goto_1b

    :cond_1d
    :goto_1c
    if-eqz v4, :cond_1e

    move-wide/from16 v46, v2

    .line 739
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    const v3, 0x7f060208

    :goto_1d
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_1e

    :cond_1e
    move-wide/from16 v46, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    const v3, 0x7f060237

    goto :goto_1d

    :goto_1e
    move/from16 v33, v2

    move-wide/from16 v2, v46

    goto :goto_1f

    :cond_1f
    move/from16 v45, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v33, 0x0

    goto :goto_1f

    :cond_20
    move-object/from16 v43, v4

    move/from16 v44, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v33, 0x0

    const/16 v45, 0x0

    :goto_1f
    and-long v38, v2, v16

    const-wide/16 v34, 0x0

    cmp-long v41, v38, v34

    if-eqz v41, :cond_2c

    if-eqz v9, :cond_21

    move/from16 v48, v4

    const/4 v4, 0x4

    .line 746
    invoke-static {v9, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    move-object/from16 v4, v27

    goto :goto_20

    :cond_21
    move/from16 v48, v4

    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_22

    .line 752
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v27

    move-object/from16 v50, v5

    move-object/from16 v51, v11

    move-object/from16 v5, v27

    goto :goto_21

    :cond_22
    move-object/from16 v50, v5

    move-object/from16 v51, v11

    const/4 v5, 0x0

    :goto_21
    const/16 v11, 0x9

    .line 754
    invoke-virtual {v1, v11, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_23

    .line 759
    invoke-virtual {v5}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v5

    goto :goto_22

    :cond_23
    const/4 v5, 0x0

    :goto_22
    const-wide/16 v34, 0x0

    cmp-long v11, v38, v34

    if-eqz v11, :cond_25

    if-eqz v5, :cond_24

    const-wide v38, 0x10000000000L

    or-long v41, v2, v38

    :goto_23
    move-wide/from16 v2, v41

    goto :goto_24

    :cond_24
    const-wide v38, 0x8000000000L

    or-long v41, v2, v38

    goto :goto_23

    :cond_25
    :goto_24
    const-wide/32 v38, 0x610000

    and-long v41, v2, v38

    const-wide/16 v34, 0x0

    cmp-long v11, v41, v34

    if-eqz v11, :cond_2b

    if-eqz v4, :cond_26

    .line 773
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    move-object/from16 v52, v4

    goto :goto_25

    :cond_26
    move-object/from16 v52, v4

    const/4 v11, 0x0

    :goto_25
    const/16 v4, 0x10

    .line 775
    invoke-virtual {v1, v4, v11}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_27

    .line 780
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_26

    :cond_27
    const/4 v4, 0x0

    :goto_26
    const-wide/16 v34, 0x0

    cmp-long v27, v41, v34

    if-eqz v27, :cond_29

    if-eqz v4, :cond_28

    const-wide/high16 v38, 0x100000000000000L

    or-long v41, v2, v38

    :goto_27
    move-wide/from16 v2, v41

    goto :goto_28

    :cond_28
    const-wide/high16 v38, 0x80000000000000L

    or-long v41, v2, v38

    goto :goto_27

    :cond_29
    :goto_28
    if-eqz v4, :cond_2a

    move-wide/from16 v53, v2

    .line 793
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    const v3, 0x7f060208

    :goto_29
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_2a

    :cond_2a
    move-wide/from16 v53, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    const v3, 0x7f060237

    goto :goto_29

    :goto_2a
    move/from16 v27, v2

    move-wide/from16 v2, v53

    goto :goto_2b

    :cond_2b
    move-object/from16 v52, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    goto :goto_2b

    :cond_2c
    move/from16 v48, v4

    move-object/from16 v50, v5

    move-object/from16 v51, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    const/16 v52, 0x0

    :goto_2b
    const-wide/32 v38, 0x60c000

    and-long v41, v2, v38

    const-wide/16 v34, 0x0

    cmp-long v38, v41, v34

    if-eqz v38, :cond_38

    if-eqz v9, :cond_2d

    move/from16 v55, v4

    const/4 v4, 0x1

    .line 800
    invoke-static {v9, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    move-object/from16 v4, v34

    goto :goto_2c

    :cond_2d
    move/from16 v55, v4

    const/4 v4, 0x0

    :goto_2c
    if-eqz v4, :cond_2e

    .line 806
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v34

    move/from16 v56, v5

    move-object/from16 v57, v11

    move-object/from16 v5, v34

    goto :goto_2d

    :cond_2e
    move/from16 v56, v5

    move-object/from16 v57, v11

    const/4 v5, 0x0

    :goto_2d
    const/16 v11, 0xe

    .line 808
    invoke-virtual {v1, v11, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_2f

    .line 813
    invoke-virtual {v5}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v5

    goto :goto_2e

    :cond_2f
    const/4 v5, 0x0

    :goto_2e
    const-wide/16 v34, 0x0

    cmp-long v11, v41, v34

    if-eqz v11, :cond_31

    if-eqz v5, :cond_30

    const-wide v38, 0x100000000L

    or-long v41, v2, v38

    :goto_2f
    move-wide/from16 v2, v41

    goto :goto_30

    :cond_30
    const-wide v38, 0x80000000L

    or-long v41, v2, v38

    goto :goto_2f

    :cond_31
    :goto_30
    const-wide/32 v38, 0x608000

    and-long v41, v2, v38

    const-wide/16 v34, 0x0

    cmp-long v11, v41, v34

    if-eqz v11, :cond_37

    if-eqz v4, :cond_32

    .line 827
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v11

    move-object/from16 v58, v4

    goto :goto_31

    :cond_32
    move-object/from16 v58, v4

    const/4 v11, 0x0

    :goto_31
    const/16 v4, 0xf

    .line 829
    invoke-virtual {v1, v4, v11}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v11, :cond_33

    .line 834
    invoke-virtual {v11}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_32

    :cond_33
    const/4 v4, 0x0

    :goto_32
    const-wide/16 v34, 0x0

    cmp-long v38, v41, v34

    if-eqz v38, :cond_35

    if-eqz v4, :cond_34

    const-wide/high16 v38, 0x400000000000000L

    or-long v41, v2, v38

    :goto_33
    move-wide/from16 v2, v41

    goto :goto_34

    :cond_34
    const-wide/high16 v38, 0x200000000000000L

    or-long v41, v2, v38

    goto :goto_33

    :cond_35
    :goto_34
    if-eqz v4, :cond_36

    move-wide/from16 v59, v2

    .line 847
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    const v3, 0x7f060208

    :goto_35
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_36

    :cond_36
    move-wide/from16 v59, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    const v3, 0x7f060237

    goto :goto_35

    :goto_36
    move/from16 v34, v2

    move-wide/from16 v2, v59

    goto :goto_37

    :cond_37
    move-object/from16 v58, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v34, 0x0

    goto :goto_37

    :cond_38
    move/from16 v55, v4

    move/from16 v56, v5

    move-object/from16 v57, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v34, 0x0

    const/16 v58, 0x0

    :goto_37
    and-long v38, v2, v30

    const-wide/16 v35, 0x0

    cmp-long v40, v38, v35

    if-eqz v40, :cond_43

    if-eqz v9, :cond_39

    move/from16 v61, v4

    const/4 v4, 0x0

    .line 854
    invoke-static {v9, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v4, v38

    check-cast v4, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    goto :goto_38

    :cond_39
    move/from16 v61, v4

    const/4 v4, 0x0

    :goto_38
    const-wide/32 v38, 0x600008

    and-long v41, v2, v38

    cmp-long v38, v41, v35

    if-eqz v38, :cond_3f

    if-eqz v4, :cond_3a

    .line 861
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v38

    move/from16 v62, v5

    move-object/from16 v63, v11

    move-object/from16 v5, v38

    goto :goto_39

    :cond_3a
    move/from16 v62, v5

    move-object/from16 v63, v11

    const/4 v5, 0x0

    :goto_39
    const/4 v11, 0x3

    .line 863
    invoke-virtual {v1, v11, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v5, :cond_3b

    .line 868
    invoke-virtual {v5}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v11

    goto :goto_3a

    :cond_3b
    const/4 v11, 0x0

    :goto_3a
    cmp-long v38, v41, v35

    if-eqz v38, :cond_3d

    if-eqz v11, :cond_3c

    const-wide/high16 v38, 0x40000000000000L

    or-long v41, v2, v38

    :goto_3b
    move-wide/from16 v2, v41

    goto :goto_3c

    :cond_3c
    const-wide/high16 v38, 0x20000000000000L

    or-long v41, v2, v38

    goto :goto_3b

    :cond_3d
    :goto_3c
    if-eqz v11, :cond_3e

    move-wide/from16 v64, v2

    .line 881
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    const v3, 0x7f060208

    :goto_3d
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_3e

    :cond_3e
    move-wide/from16 v64, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    const v3, 0x7f060237

    goto :goto_3d

    :goto_3e
    move/from16 v38, v2

    move-wide/from16 v2, v64

    goto :goto_3f

    :cond_3f
    move/from16 v62, v5

    move-object/from16 v63, v11

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v38, 0x0

    :goto_3f
    if-eqz v4, :cond_40

    .line 886
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v39

    move-object/from16 v66, v4

    move-object/from16 v67, v5

    move-object/from16 v4, v39

    goto :goto_40

    :cond_40
    move-object/from16 v66, v4

    move-object/from16 v67, v5

    const/4 v4, 0x0

    :goto_40
    const/4 v5, 0x6

    .line 888
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_41

    .line 893
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_41

    :cond_41
    const/4 v4, 0x0

    :goto_41
    and-long v39, v2, v30

    const-wide/16 v35, 0x0

    cmp-long v5, v39, v35

    if-eqz v5, :cond_44

    if-eqz v4, :cond_42

    const-wide/32 v39, 0x1000000

    or-long v41, v2, v39

    :goto_42
    move-wide/from16 v2, v41

    goto :goto_43

    :cond_42
    const-wide/32 v39, 0x800000

    or-long v41, v2, v39

    goto :goto_42

    :cond_43
    move/from16 v61, v4

    move/from16 v62, v5

    move-object/from16 v63, v11

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v38, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    :cond_44
    :goto_43
    const-wide/32 v39, 0x601001

    and-long v41, v2, v39

    const-wide/16 v35, 0x0

    cmp-long v5, v41, v35

    if-eqz v5, :cond_50

    if-eqz v9, :cond_45

    const/4 v5, 0x2

    .line 908
    invoke-static {v9, v5}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    goto :goto_44

    :cond_45
    const/4 v5, 0x0

    :goto_44
    if-eqz v5, :cond_46

    .line 914
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isCurrent()Landroid/databinding/ObservableBoolean;

    move-result-object v9

    move/from16 v68, v4

    const/4 v4, 0x0

    goto :goto_45

    :cond_46
    move/from16 v68, v4

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 916
    :goto_45
    invoke-virtual {v1, v4, v9}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v9, :cond_47

    .line 921
    invoke-virtual {v9}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v9

    goto :goto_46

    :cond_47
    move v9, v4

    :goto_46
    const-wide/16 v35, 0x0

    cmp-long v24, v41, v35

    if-eqz v24, :cond_49

    if-eqz v9, :cond_48

    const-wide v39, 0x1000000000L

    or-long v41, v2, v39

    :goto_47
    move-wide/from16 v2, v41

    goto :goto_48

    :cond_48
    const-wide v39, 0x800000000L

    or-long v41, v2, v39

    goto :goto_47

    :cond_49
    :goto_48
    const-wide/32 v39, 0x601000

    and-long v41, v2, v39

    const-wide/16 v35, 0x0

    cmp-long v24, v41, v35

    if-eqz v24, :cond_4f

    if-eqz v5, :cond_4a

    .line 935
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v19

    move-object/from16 v69, v5

    move-object/from16 v4, v19

    goto :goto_49

    :cond_4a
    move-object/from16 v69, v5

    const/4 v4, 0x0

    :goto_49
    const/16 v5, 0xc

    .line 937
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_4b

    .line 942
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v5

    goto :goto_4a

    :cond_4b
    const/4 v5, 0x0

    :goto_4a
    const-wide/16 v35, 0x0

    cmp-long v19, v41, v35

    if-eqz v19, :cond_4d

    if-eqz v5, :cond_4c

    const-wide v39, 0x100000000000L

    or-long v41, v2, v39

    :goto_4b
    move-wide/from16 v2, v41

    goto :goto_4c

    :cond_4c
    const-wide v39, 0x80000000000L

    or-long v41, v2, v39

    goto :goto_4b

    :cond_4d
    :goto_4c
    if-eqz v5, :cond_4e

    move-wide/from16 v70, v2

    .line 955
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    const v3, 0x7f060208

    :goto_4d
    invoke-static {v2, v3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->getColorFromResource(Landroid/view/View;I)I

    move-result v2

    goto :goto_4e

    :cond_4e
    move-wide/from16 v70, v2

    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    const v3, 0x7f060237

    goto :goto_4d

    :goto_4e
    move-object/from16 v19, v4

    move-object/from16 v77, v6

    move-object/from16 v78, v7

    move-object/from16 v76, v8

    move/from16 v24, v9

    move/from16 v75, v10

    move/from16 v72, v11

    move/from16 v79, v12

    move/from16 v73, v13

    move/from16 v74, v14

    move/from16 v10, v18

    move/from16 v8, v27

    move/from16 v7, v33

    move/from16 v6, v34

    move/from16 v12, v38

    move-object/from16 v13, v52

    move-object/from16 v11, v58

    move-object/from16 v4, v66

    move-object/from16 v9, v69

    move v14, v2

    move/from16 v18, v5

    move-object/from16 v5, v50

    move-wide/from16 v2, v70

    goto/16 :goto_4f

    :cond_4f
    move-object/from16 v69, v5

    move-object/from16 v77, v6

    move-object/from16 v78, v7

    move-object/from16 v76, v8

    move/from16 v24, v9

    move/from16 v75, v10

    move/from16 v72, v11

    move/from16 v79, v12

    move/from16 v73, v13

    move/from16 v74, v14

    move/from16 v10, v18

    move/from16 v8, v27

    move/from16 v7, v33

    move/from16 v6, v34

    move/from16 v12, v38

    move-object/from16 v5, v50

    move-object/from16 v13, v52

    move-object/from16 v11, v58

    move-object/from16 v4, v66

    move-object/from16 v9, v69

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto/16 :goto_4f

    :cond_50
    move/from16 v68, v4

    move-object/from16 v77, v6

    move-object/from16 v78, v7

    move-object/from16 v76, v8

    move/from16 v75, v10

    move/from16 v72, v11

    move/from16 v79, v12

    move/from16 v73, v13

    move/from16 v74, v14

    move/from16 v10, v18

    move/from16 v8, v27

    move/from16 v7, v33

    move/from16 v6, v34

    move/from16 v12, v38

    move-object/from16 v5, v50

    move-object/from16 v13, v52

    move-object/from16 v11, v58

    move-object/from16 v4, v66

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    goto :goto_4f

    :cond_51
    move-object/from16 v77, v6

    move-object/from16 v78, v7

    move-object/from16 v76, v8

    move/from16 v75, v10

    move/from16 v79, v12

    move/from16 v74, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    :goto_4f
    const-wide v33, 0x2000000000L

    and-long v38, v2, v33

    const-wide/16 v33, 0x0

    cmp-long v27, v38, v33

    if-eqz v27, :cond_55

    if-eqz v15, :cond_52

    .line 965
    invoke-virtual {v15}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v43

    :cond_52
    move/from16 v80, v12

    move-object/from16 v15, v43

    const/4 v12, 0x2

    .line 967
    invoke-virtual {v1, v12, v15}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v15, :cond_53

    .line 972
    invoke-virtual {v15}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v73

    :cond_53
    and-long v32, v2, v25

    const-wide/16 v34, 0x0

    cmp-long v12, v32, v34

    if-eqz v12, :cond_56

    if-eqz v73, :cond_54

    const-wide v32, 0x40000000000L

    or-long v38, v2, v32

    :goto_50
    move-wide/from16 v2, v38

    goto :goto_51

    :cond_54
    const-wide v32, 0x20000000000L

    or-long v38, v2, v32

    goto :goto_50

    :cond_55
    move/from16 v80, v12

    :cond_56
    :goto_51
    const-wide/32 v32, 0x800000

    and-long v38, v2, v32

    const-wide/16 v32, 0x0

    cmp-long v12, v38, v32

    if-eqz v12, :cond_5a

    if-eqz v4, :cond_57

    .line 987
    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v67

    :cond_57
    move-object/from16 v4, v67

    const/4 v12, 0x3

    .line 989
    invoke-virtual {v1, v12, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_58

    .line 994
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v72

    :cond_58
    const-wide/32 v32, 0x600008

    and-long v37, v2, v32

    const-wide/16 v32, 0x0

    cmp-long v4, v37, v32

    if-eqz v4, :cond_5a

    if-eqz v72, :cond_59

    const-wide/high16 v32, 0x40000000000000L

    or-long v37, v2, v32

    :goto_52
    move-wide/from16 v2, v37

    goto :goto_53

    :cond_59
    const-wide/high16 v32, 0x20000000000000L

    or-long v37, v2, v32

    goto :goto_52

    :cond_5a
    :goto_53
    const-wide/high16 v32, 0x8000000000000L

    and-long v37, v2, v32

    const-wide/16 v32, 0x0

    cmp-long v4, v37, v32

    if-eqz v4, :cond_5e

    if-eqz v5, :cond_5b

    .line 1009
    invoke-virtual {v5}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v51

    :cond_5b
    move-object/from16 v4, v51

    const/16 v5, 0xb

    .line 1011
    invoke-virtual {v1, v5, v4}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v4, :cond_5c

    .line 1016
    invoke-virtual {v4}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v48

    :cond_5c
    and-long v4, v2, v20

    const-wide/16 v32, 0x0

    cmp-long v12, v4, v32

    if-eqz v12, :cond_5e

    if-eqz v48, :cond_5d

    const-wide/32 v4, 0x40000000

    or-long v32, v2, v4

    goto :goto_54

    :cond_5d
    const-wide/32 v4, 0x20000000

    or-long v32, v2, v4

    goto :goto_54

    :cond_5e
    move-wide/from16 v32, v2

    :goto_54
    const-wide v2, 0x800000000L

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v12, v4, v2

    if-eqz v12, :cond_62

    if-eqz v9, :cond_5f

    .line 1031
    invoke-virtual {v9}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v19

    :cond_5f
    move-object/from16 v2, v19

    const/16 v3, 0xc

    .line 1033
    invoke-virtual {v1, v3, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v2, :cond_60

    .line 1038
    invoke-virtual {v2}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v18

    :cond_60
    const-wide/32 v2, 0x601000

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-eqz v9, :cond_62

    if-eqz v18, :cond_61

    const-wide v2, 0x100000000000L

    or-long v4, v32, v2

    :goto_55
    move-wide/from16 v32, v4

    goto :goto_56

    :cond_61
    const-wide v2, 0x80000000000L

    or-long v4, v32, v2

    goto :goto_55

    :cond_62
    :goto_56
    const-wide v2, 0x80000000L

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-eqz v9, :cond_66

    if-eqz v11, :cond_63

    .line 1053
    invoke-virtual {v11}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v63

    :cond_63
    move-object/from16 v2, v63

    const/16 v3, 0xf

    .line 1055
    invoke-virtual {v1, v3, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v2, :cond_64

    .line 1060
    invoke-virtual {v2}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v61

    :cond_64
    const-wide/32 v2, 0x608000

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-eqz v9, :cond_66

    if-eqz v61, :cond_65

    const-wide/high16 v2, 0x400000000000000L

    or-long v4, v32, v2

    :goto_57
    move-wide/from16 v32, v4

    goto :goto_58

    :cond_65
    const-wide/high16 v2, 0x200000000000000L

    or-long v4, v32, v2

    goto :goto_57

    :cond_66
    :goto_58
    const-wide v2, 0x8000000000L

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-eqz v9, :cond_6a

    if-eqz v13, :cond_67

    .line 1075
    invoke-virtual {v13}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v57

    :cond_67
    move-object/from16 v2, v57

    const/16 v3, 0x10

    .line 1077
    invoke-virtual {v1, v3, v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->updateRegistration(ILandroid/databinding/Observable;)Z

    if-eqz v2, :cond_68

    .line 1082
    invoke-virtual {v2}, Landroid/databinding/ObservableBoolean;->get()Z

    move-result v55

    :cond_68
    const-wide/32 v2, 0x610000

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v9, v4, v2

    if-eqz v9, :cond_6a

    if-eqz v55, :cond_69

    const-wide/high16 v2, 0x100000000000000L

    or-long v4, v32, v2

    :goto_59
    move-wide/from16 v32, v4

    goto :goto_5a

    :cond_69
    const-wide/high16 v2, 0x80000000000000L

    or-long v4, v32, v2

    goto :goto_59

    :cond_6a
    :goto_5a
    move/from16 v13, v55

    and-long v2, v32, v30

    const-wide/16 v4, 0x0

    cmp-long v9, v2, v4

    if-eqz v9, :cond_6f

    if-eqz v68, :cond_6b

    const/16 v72, 0x1

    :cond_6b
    cmp-long v9, v2, v4

    if-eqz v9, :cond_6d

    if-eqz v72, :cond_6c

    const-wide/high16 v2, 0x1000000000000L

    or-long v4, v32, v2

    :goto_5b
    move-wide/from16 v32, v4

    goto :goto_5c

    :cond_6c
    const-wide v2, 0x800000000000L

    or-long v4, v32, v2

    goto :goto_5b

    :cond_6d
    :goto_5c
    if-eqz v72, :cond_6e

    goto :goto_5d

    :cond_6e
    const/4 v2, 0x4

    goto :goto_5e

    :cond_6f
    :goto_5d
    const/4 v2, 0x0

    :goto_5e
    const-wide/32 v3, 0x60c000

    and-long v11, v32, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v11, v3

    if-eqz v5, :cond_74

    if-eqz v62, :cond_70

    const/16 v61, 0x1

    :cond_70
    cmp-long v5, v11, v3

    if-eqz v5, :cond_72

    if-eqz v61, :cond_71

    const-wide/32 v3, 0x10000000

    or-long v11, v32, v3

    :goto_5f
    move-wide/from16 v32, v11

    goto :goto_60

    :cond_71
    const-wide/32 v3, 0x8000000

    or-long v11, v32, v3

    goto :goto_5f

    :cond_72
    :goto_60
    if-eqz v61, :cond_73

    goto :goto_61

    :cond_73
    const/4 v3, 0x4

    goto :goto_62

    :cond_74
    :goto_61
    const/4 v3, 0x0

    :goto_62
    const-wide/32 v4, 0x601001

    and-long v11, v32, v4

    const-wide/16 v4, 0x0

    cmp-long v9, v11, v4

    if-eqz v9, :cond_79

    if-eqz v24, :cond_75

    const/16 v18, 0x1

    :cond_75
    cmp-long v9, v11, v4

    if-eqz v9, :cond_77

    if-eqz v18, :cond_76

    const-wide v4, 0x400000000000L

    or-long v11, v32, v4

    :goto_63
    move-wide/from16 v32, v11

    goto :goto_64

    :cond_76
    const-wide v4, 0x200000000000L

    or-long v11, v32, v4

    goto :goto_63

    :cond_77
    :goto_64
    if-eqz v18, :cond_78

    goto :goto_65

    :cond_78
    const/4 v4, 0x4

    goto :goto_66

    :cond_79
    :goto_65
    const/4 v4, 0x0

    :goto_66
    and-long v11, v32, v28

    const-wide/16 v18, 0x0

    cmp-long v5, v11, v18

    if-eqz v5, :cond_7e

    if-eqz v44, :cond_7a

    const/16 v73, 0x1

    :cond_7a
    cmp-long v5, v11, v18

    if-eqz v5, :cond_7c

    if-eqz v73, :cond_7b

    const-wide/32 v11, 0x4000000

    or-long v18, v32, v11

    :goto_67
    move-wide/from16 v32, v18

    goto :goto_68

    :cond_7b
    const-wide/32 v11, 0x2000000

    or-long v18, v32, v11

    goto :goto_67

    :cond_7c
    :goto_68
    if-eqz v73, :cond_7d

    goto :goto_69

    :cond_7d
    const/4 v5, 0x4

    goto :goto_6a

    :cond_7e
    :goto_69
    const/4 v5, 0x0

    :goto_6a
    and-long v11, v32, v16

    const-wide/16 v18, 0x0

    cmp-long v9, v11, v18

    if-eqz v9, :cond_83

    if-eqz v56, :cond_7f

    const/4 v13, 0x1

    :cond_7f
    cmp-long v9, v11, v18

    if-eqz v9, :cond_81

    if-eqz v13, :cond_80

    const-wide/high16 v11, 0x4000000000000L

    or-long v18, v32, v11

    :goto_6b
    move-wide/from16 v32, v18

    goto :goto_6c

    :cond_80
    const-wide/high16 v11, 0x2000000000000L

    or-long v18, v32, v11

    goto :goto_6b

    :cond_81
    :goto_6c
    if-eqz v13, :cond_82

    goto :goto_6d

    :cond_82
    const/4 v13, 0x4

    goto :goto_6e

    :cond_83
    :goto_6d
    const/4 v13, 0x0

    :goto_6e
    and-long v11, v32, v22

    const-wide/16 v18, 0x0

    cmp-long v9, v11, v18

    if-eqz v9, :cond_88

    if-eqz v45, :cond_84

    const/16 v48, 0x1

    :cond_84
    cmp-long v9, v11, v18

    if-eqz v9, :cond_86

    if-eqz v48, :cond_85

    const-wide v11, 0x400000000L

    or-long v18, v32, v11

    :goto_6f
    move-wide/from16 v32, v18

    goto :goto_70

    :cond_85
    const-wide v11, 0x200000000L

    or-long v18, v32, v11

    goto :goto_6f

    :cond_86
    :goto_70
    if-eqz v48, :cond_87

    const/16 v49, 0x0

    goto :goto_71

    :cond_87
    const/16 v49, 0x4

    :goto_71
    move/from16 v9, v49

    goto :goto_72

    :cond_88
    const/4 v9, 0x0

    :goto_72
    const-wide/32 v11, 0x601000

    and-long v18, v32, v11

    const-wide/16 v11, 0x0

    cmp-long v15, v18, v11

    if-eqz v15, :cond_89

    .line 1200
    iget-object v15, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    invoke-static {v15, v14}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_89
    const-wide/32 v14, 0x601001

    and-long v18, v32, v14

    cmp-long v14, v18, v11

    if-eqz v14, :cond_8a

    .line 1205
    iget-object v14, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedDeath:Landroid/widget/ImageView;

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8a
    and-long v14, v32, v25

    cmp-long v4, v14, v11

    if-eqz v4, :cond_8b

    .line 1210
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    invoke-static {v4, v10}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_8b
    and-long v14, v32, v28

    cmp-long v4, v14, v11

    if-eqz v4, :cond_8c

    .line 1215
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedGnoms:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8c
    const-wide/32 v4, 0x610000

    and-long v14, v32, v4

    cmp-long v4, v14, v11

    if-eqz v4, :cond_8d

    .line 1220
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    invoke-static {v4, v8}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_8d
    and-long v4, v32, v16

    cmp-long v8, v4, v11

    if-eqz v8, :cond_8e

    .line 1225
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedLejeboker:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8e
    const-wide/32 v4, 0x608000

    and-long v13, v32, v4

    cmp-long v4, v13, v11

    if-eqz v4, :cond_8f

    .line 1230
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_8f
    const-wide/32 v4, 0x60c000

    and-long v13, v32, v4

    cmp-long v4, v13, v11

    if-eqz v4, :cond_90

    .line 1235
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedOrcs:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_90
    and-long v3, v32, v20

    cmp-long v5, v3, v11

    if-eqz v5, :cond_91

    .line 1240
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    invoke-static {v3, v7}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_91
    and-long v3, v32, v22

    cmp-long v5, v3, v11

    if-eqz v5, :cond_92

    .line 1245
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedRickmorty:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_92
    const-wide/32 v3, 0x600008

    and-long v5, v32, v3

    cmp-long v3, v5, v11

    if-eqz v3, :cond_93

    .line 1250
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    move/from16 v4, v80

    invoke-static {v3, v4}, Lru/rocketbank/r2d2/utils/BindingUtils;->setImageViewTint(Landroid/widget/ImageView;I)V

    :cond_93
    and-long v3, v32, v30

    cmp-long v5, v3, v11

    if-eqz v5, :cond_94

    .line 1255
    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->activatedSystem:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_94
    const-wide/32 v2, 0x400000

    and-long v4, v32, v2

    cmp-long v2, v4, v11

    if-eqz v2, :cond_95

    .line 1260
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->bottom:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback41:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView1:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback35:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1262
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView11:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback40:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1263
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView3:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback36:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView5:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback37:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView7:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback38:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mboundView9:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mCallback39:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_95
    const-wide/32 v2, 0x500100

    and-long v4, v32, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_96

    .line 1271
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->headMusic:Landroid/widget/LinearLayout;

    move/from16 v12, v79

    invoke-static {v12}, Landroid/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_96
    const-wide/32 v4, 0x480000

    and-long v6, v32, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_97

    .line 1276
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    move-object/from16 v5, v78

    invoke-virtual {v4, v5}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    :cond_97
    const-wide/32 v4, 0x420000

    and-long v6, v32, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_98

    .line 1281
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    move-object/from16 v5, v77

    invoke-virtual {v4, v5}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V

    :cond_98
    const-wide/32 v4, 0x502000

    and-long v6, v32, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_99

    .line 1286
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

    move-object/from16 v8, v76

    invoke-static {v4, v8}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_99
    const-wide/32 v4, 0x500010

    and-long v6, v32, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_9a

    .line 1291
    iget-object v4, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v10, v75

    invoke-virtual {v4, v10}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    :cond_9a
    const-wide/32 v4, 0x500080

    and-long v6, v32, v4

    cmp-long v4, v6, v2

    if-eqz v4, :cond_9b

    .line 1296
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->previewPlayTitle:Lru/rocketbank/core/widgets/RocketTextView;

    move/from16 v14, v74

    invoke-virtual {v2, v14}, Lru/rocketbank/core/widgets/RocketTextView;->setTextColor(I)V

    .line 1298
    :cond_9b
    iget-object v2, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-static {v2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 504
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getData()Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;
    .locals 1

    .line 283
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mData:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    return-object v0
.end method

.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 271
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getListener()Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;
    .locals 1

    .line 259
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;
    .locals 1

    .line 247
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    return-object v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 204
    monitor-exit p0

    return v0

    .line 206
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 206
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 193
    monitor-enter p0

    const-wide/32 v0, 0x400000

    .line 194
    :try_start_0
    iput-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->invalidateAll()V

    .line 197
    invoke-virtual {p0}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 195
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

    .line 340
    :pswitch_0
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems4IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 338
    :pswitch_1
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems1IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 336
    :pswitch_2
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems1IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 334
    :pswitch_3
    check-cast p2, Landroid/databinding/ObservableField;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeDataSoundName(Landroid/databinding/ObservableField;I)Z

    move-result p1

    return p1

    .line 332
    :pswitch_4
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems2IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 330
    :pswitch_5
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems5IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 328
    :pswitch_6
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems5IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 326
    :pswitch_7
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems4IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 324
    :pswitch_8
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeDataBackgroundColor(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 322
    :pswitch_9
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeDataTextColor(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 320
    :pswitch_a
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems0IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 318
    :pswitch_b
    check-cast p2, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeInclude(Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;I)Z

    move-result p1

    return p1

    .line 316
    :pswitch_c
    check-cast p2, Landroid/databinding/ObservableInt;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeDataSubTextColor(Landroid/databinding/ObservableInt;I)Z

    move-result p1

    return p1

    .line 314
    :pswitch_d
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems0IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 312
    :pswitch_e
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems3IsActive(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 310
    :pswitch_f
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems3IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    .line 308
    :pswitch_10
    check-cast p2, Landroid/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->onChangeItems2IsCurrent(Landroid/databinding/ObservableBoolean;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setData(Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;)V
    .locals 6

    .line 274
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mData:Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x100000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 278
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->notifyPropertyChanged(I)V

    .line 279
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 277
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
    .locals 6

    .line 262
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x80000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 266
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->notifyPropertyChanged(I)V

    .line 267
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 265
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;",
            ">;)V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mItems:Ljava/util/List;

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x200000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x32

    .line 290
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->notifyPropertyChanged(I)V

    .line 291
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 300
    invoke-super {p0, p1}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 301
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->include:Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setListener(Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;)V
    .locals 6

    .line 250
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mListener:Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x40000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 254
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->notifyPropertyChanged(I)V

    .line 255
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 253
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V
    .locals 6

    .line 238
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-wide v0, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    const-wide/32 v2, 0x20000

    or-long v4, v0, v2

    iput-wide v4, p0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->mDirtyFlags:J

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x54

    .line 242
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->notifyPropertyChanged(I)V

    .line 243
    invoke-super {p0}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 241
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne v0, p1, :cond_0

    .line 217
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    if-ne v0, p1, :cond_1

    .line 220
    check-cast p2, Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setListener(Lru/rocketbank/r2d2/data/binding/sound/SoundsListener;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x28

    if-ne v0, p1, :cond_2

    .line 223
    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    if-ne v0, p1, :cond_3

    .line 226
    check-cast p2, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setData(Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x32

    if-ne v0, p1, :cond_4

    .line 229
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->setItems(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
