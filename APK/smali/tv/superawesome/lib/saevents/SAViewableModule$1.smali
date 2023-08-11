.class Ltv/superawesome/lib/saevents/SAViewableModule$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

.field final synthetic val$child:Landroid/view/ViewGroup;

.field final synthetic val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

.field final synthetic val$maxTicks:I


# direct methods
.method constructor <init>(Ltv/superawesome/lib/saevents/SAViewableModule;ILtv/superawesome/lib/saevents/SAViewableModule$Listener;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    iput p2, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$maxTicks:I

    iput-object p3, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

    iput-object p4, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$000(Ltv/superawesome/lib/saevents/SAViewableModule;)S

    move-result v0

    iget v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$maxTicks:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$100(Ltv/superawesome/lib/saevents/SAViewableModule;)S

    move-result v0

    iget v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$maxTicks:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

    invoke-interface {v0, v2}, Ltv/superawesome/lib/saevents/SAViewableModule$Listener;->saDidFindViewOnScreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$listener:Ltv/superawesome/lib/saevents/SAViewableModule$Listener;

    invoke-interface {v0, v7}, Ltv/superawesome/lib/saevents/SAViewableModule$Listener;->saDidFindViewOnScreen(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$008(Ltv/superawesome/lib/saevents/SAViewableModule;)S

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_0
    iget-object v3, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v0, v4}, Ltv/superawesome/lib/sautils/SAUtils;->getRealScreenSize(Landroid/app/Activity;Z)Ltv/superawesome/lib/sautils/SAUtils$SASize;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->width:I

    iget v7, v0, Ltv/superawesome/lib/sautils/SAUtils$SASize;->height:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    invoke-static {v1, v2}, Ltv/superawesome/lib/sautils/SAUtils;->isTargetRectInFrameRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v0}, Ltv/superawesome/lib/sautils/SAUtils;->isTargetRectInFrameRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$108(Ltv/superawesome/lib/saevents/SAViewableModule;)S

    :cond_3
    const-string v0, "SuperAwesome"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Viewability count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v2}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$000(Ltv/superawesome/lib/saevents/SAViewableModule;)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->val$maxTicks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v0}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$300(Ltv/superawesome/lib/saevents/SAViewableModule;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule$1;->this$0:Ltv/superawesome/lib/saevents/SAViewableModule;

    invoke-static {v1}, Ltv/superawesome/lib/saevents/SAViewableModule;->access$200(Ltv/superawesome/lib/saevents/SAViewableModule;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
