.class Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$currentNotificationIndex:I

.field final synthetic val$notificationList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    iput-object p2, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$notificationList:Ljava/util/List;

    iput p4, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$currentNotificationIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->this$0:Lcom/hangame/hsp/auth/lnc/LncNoticeManager;

    iget-object v1, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$notificationList:Ljava/util/List;

    iget v3, p0, Lcom/hangame/hsp/auth/lnc/LncNoticeManager$3;->val$currentNotificationIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/auth/lnc/LncNoticeManager;->access$000(Lcom/hangame/hsp/auth/lnc/LncNoticeManager;Landroid/app/Activity;Ljava/util/List;I)V

    return-void
.end method
