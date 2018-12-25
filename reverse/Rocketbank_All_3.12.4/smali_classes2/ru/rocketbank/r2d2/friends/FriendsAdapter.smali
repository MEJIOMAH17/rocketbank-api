.class public Lru/rocketbank/r2d2/friends/FriendsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FriendsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_FRIEND:I = 0x0

.field private static final ITEM_VIEW_TYPE_ROCKET_FRIEND:I = 0x1

.field private static final TRANSITION_NAME_AVATAR:Ljava/lang/String; = "avatar"

.field private static final TRANSITION_NAME_NAME:Ljava/lang/String; = "name"

.field private static final TRANSITION_NAME_ROOT:Ljava/lang/String; = "root"


# instance fields
.field protected friendsCursor:Landroid/database/Cursor;

.field private indexDisplayName:I

.field private indexID:I

.field private indexThumbnail:I

.field private onContactClickListener:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2<",
            "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private rocketFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private transfers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action2<",
            "Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexID:I

    .line 35
    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexThumbnail:I

    .line 36
    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexDisplayName:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->onContactClickListener:Lrx/functions/Action2;

    return-void
.end method

.method static synthetic access$000(Lru/rocketbank/r2d2/friends/FriendsAdapter;)Lrx/functions/Action2;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->onContactClickListener:Lrx/functions/Action2;

    return-object p0
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 266
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getFriend(I)Lru/rocketbank/core/model/contact/Contact;
    .locals 8

    .line 65
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    .line 66
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_2

    .line 72
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    return-object p1

    .line 74
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasFriends()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 79
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 80
    new-instance p1, Lru/rocketbank/core/model/contact/Contact;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    iget v1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexID:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    iget v1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexDisplayName:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lru/rocketbank/core/model/contact/Contact;-><init>(JLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    iget v1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexThumbnail:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/contact/Contact;->setAvatar(Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFriendsCount()I
    .locals 1

    .line 222
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasFriends()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasFriends()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 196
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {p1}, Lru/rocketbank/core/model/contact/Contact;->isRocket()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 199
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public getRocketFriendsCount()I
    .locals 1

    .line 229
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransfersCount()I
    .locals 1

    .line 236
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected hasFriends()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 218
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected hasRocketFriends()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasTransfers()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isFirstInSection(I)Z
    .locals 4

    .line 171
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    return v2

    .line 179
    :cond_1
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 181
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p1, v0, :cond_3

    return v2

    .line 185
    :cond_3
    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 187
    :cond_4
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasFriends()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method protected isLastInSection(I)Z
    .locals 4

    .line 154
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasTransfers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_1

    return v2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasRocketFriends()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_2

    return v2

    .line 163
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->hasFriends()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 91
    check-cast p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    .line 92
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getItemViewType(I)I

    move-result v0

    .line 93
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->getFriend(I)Lru/rocketbank/core/model/contact/Contact;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    invoke-virtual {v2, v1}, Lru/rocketbank/core/widgets/ContactAvatarView;->setContact(Lru/rocketbank/core/model/contact/Contact;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->rocketIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->rocketIcon:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 108
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->avatar:Lru/rocketbank/core/widgets/ContactAvatarView;

    const-string v2, "avatar"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lru/rocketbank/core/widgets/ContactAvatarView;->setTransitionName(Ljava/lang/String;)V

    .line 109
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 110
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    const-string v2, "root"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTransitionName(Ljava/lang/String;)V

    .line 112
    :cond_1
    iget-object v0, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->root:Landroid/view/ViewGroup;

    new-instance v2, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;

    invoke-direct {v2, p0, p1, v1}, Lru/rocketbank/r2d2/friends/FriendsAdapter$1;-><init>(Lru/rocketbank/r2d2/friends/FriendsAdapter;Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p1, p1, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendsAdapter$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter$2;-><init>(Lru/rocketbank/r2d2/friends/FriendsAdapter;)V

    new-instance v1, Lru/rocketbank/r2d2/friends/FriendsAdapter$3;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter$3;-><init>(Lru/rocketbank/r2d2/friends/FriendsAdapter;)V

    invoke-static {p2, p1, v0, v1}, Lru/rocketbank/r2d2/helpers/UIHelper;->addPadding(ILandroid/view/View;Lrx/functions/Func1;Lrx/functions/Func1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 61
    new-instance p2, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0150

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lru/rocketbank/r2d2/friends/FriendsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "_id"

    .line 248
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexID:I

    const-string v0, "photo_thumb_uri"

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexThumbnail:I

    const-string v0, "display_name"

    .line 250
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->indexDisplayName:I

    .line 253
    :cond_0
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->friendsCursor:Landroid/database/Cursor;

    .line 254
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setRocketFriends(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->rocketFriends:Ljava/util/List;

    return-void
.end method

.method public setTransfers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendsAdapter;->transfers:Ljava/util/List;

    return-void
.end method
