/*
  Warnings:

  - You are about to drop the column `bith_date` on the `Customer` table. All the data in the column will be lost.
  - You are about to drop the column `street_number` on the `Customer` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Car" ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "modified_user_id" INTEGER NOT NULL DEFAULT 1,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "updated_user_id" INTEGER NOT NULL DEFAULT 1;

-- AlterTable
ALTER TABLE "Customer" DROP COLUMN "bith_date",
DROP COLUMN "street_number",
ADD COLUMN     "birth_date" TIMESTAMP(3),
ADD COLUMN     "street_name" TEXT NOT NULL DEFAULT 'Unknown';

-- AddForeignKey
ALTER TABLE "Car" ADD CONSTRAINT "Car_updated_user_id_fkey" FOREIGN KEY ("updated_user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Car" ADD CONSTRAINT "Car_modified_user_id_fkey" FOREIGN KEY ("modified_user_id") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
