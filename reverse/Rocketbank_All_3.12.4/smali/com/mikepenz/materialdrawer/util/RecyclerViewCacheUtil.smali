.class public final Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;
.super Ljava/lang/Object;
.source "RecyclerViewCacheUtil.java"


# static fields
.field private static SINGLETON:Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;


# instance fields
.field private CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private CACHE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE_SIZE:I

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;
    .locals 1

    .line 25
    sget-object v0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->SINGLETON:Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;-><init>()V

    sput-object v0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->SINGLETON:Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    .line 28
    :cond_0
    sget-object v0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->SINGLETON:Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final obtain(Ljava/lang/String;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/util/RecyclerViewCacheUtil;->CACHE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
